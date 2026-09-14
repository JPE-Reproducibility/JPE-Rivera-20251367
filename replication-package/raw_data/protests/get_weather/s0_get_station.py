
import requests
import json
from datetime import datetime
import pandas as pd 
import os
import geopandas as gpd
from shapely.geometry import Point
from shapely.ops import nearest_points
import numpy as np
from tqdm import tqdm
from geopy.distance import geodesic
import censusdata
tqdm.pandas()
# SET WD TO REPLICATION
os.chdir('replication/raw_data/protests/get_weather')

# Get census info
var_dict = {
  "black":"B03002_004E",
  "hispanic":"B03001_003E",
  "white":"B03002_003E",
  "total":"B01003_001E",
  "nonhispanic" : "B03001_002E",
  "median_income" : "B06011_001E",
  "male_15_17" : "B01001_006E"
}
censusdf = []
for year in range(2013,2023):
    data = censusdata.download('acs5', year,
                           censusdata.censusgeo([('state', '*'), ('county', '*')]),
                           list(var_dict.values()))
    data["STATEFP"] = data.index.map(lambda x: x.params()[0][1])
    data["COUNTYFP"] = data.index.map(lambda x: x.params()[1][1])
    data["NAME"] = data.index.map(lambda x: x.name)
    data["year"] = year
    data.reset_index(drop=True, inplace=True)
    censusdf.append(data)

censusdf=pd.concat(censusdf)
censusdf.rename(columns= {v: k for k, v in var_dict.items()}, inplace=True)
censusdf.to_csv("output/county_census_data.csv.gz", index=False, compression='gzip')

# Load county data and get centriods
# https://www2.census.gov/geo/tiger/TIGER2020/2020_TL_Shapefiles_File_Name_Definitions.pdf
gdf = gpd.read_file("./tl_2020_us_county/tl_2020_us_county.shp")

# Convert the CRS to a projected one (here using EPSG:3857, Web Mercator)
gdf = gdf.to_crs(epsg=3857)

# Calculate the centroid of each polygon
gdf['centroid'] = gdf.geometry.centroid

# Convert the centroids back to the original CRS for correct longitude/latitude values
gdf['centroid'] = gdf['centroid'].to_crs(epsg=4326)
gdf = gdf.to_crs(epsg=4326)

# For each county, get closest station
# Load station data
# STATIONS: https://www.ncei.noaa.gov/pub/data/ghcn/daily/ghcnd-stations.txt
# README: https://www.ncei.noaa.gov/pub/data/ghcn/daily/readme-by_station.txt
url = 'https://www.ncei.noaa.gov/pub/data/ghcn/daily/ghcnd-stations.txt'
response = requests.get(url)
with open('ghcnd-stations.txt', 'w') as f:
    f.write(response.text)
# Define column specifications (start, end) and names
col_names = ['ID', 'LATITUDE', 'LONGITUDE', 'ELEVATION', 'NAME', 'GSN FLAG', 'HCN/CRN FLAG', 'WMO ID']
# Load the file into a DataFrame
stationdf = pd.read_fwf('ghcnd-stations.txt', header=None)
stationdf.columns = col_names
stationdf=stationdf[stationdf['WMO ID'].notnull()]
stationdf = stationdf[stationdf.ID.str.contains("US")]

stationdf = stationdf[(stationdf['LATITUDE'] >= 21) & 
                      (stationdf['LATITUDE'] <= 70) & 
                      (stationdf['LONGITUDE'] >= -160) & 
                      (stationdf['LONGITUDE'] <= -67)]

# Convert the 'LATITUDE' and 'LONGITUDE' columns to numeric
stationdf['LATITUDE'] = pd.to_numeric(stationdf['LATITUDE'])
stationdf['LONGITUDE'] = pd.to_numeric(stationdf['LONGITUDE'])
#####


# Create a GeoDataFrame for the stations
station_gdf = gpd.GeoDataFrame(stationdf, geometry=gpd.points_from_xy(stationdf.LONGITUDE, stationdf.LATITUDE))

# Create a unary union of the station points
unary_union = station_gdf.geometry.unary_union

def nearest_station(point):
    # Find the nearest station point
    nearest_geom = nearest_points(point, unary_union)[1]
    # Find the station with the nearest geometry
    nearest_station = station_gdf[station_gdf.geometry == nearest_geom]
    # Return the ID of the nearest station
    return nearest_station['ID'].values[0]

# Apply the nearest_station function to each centroid in gdf
gdf['closest_station_id'] = gdf.centroid.progress_apply(nearest_station)
#####

gdf = gdf.merge(
    stationdf[["ID","LATITUDE","LONGITUDE", "NAME","WMO ID"]]\
    .rename(columns={"ID": "closest_station_id", "LATITUDE": "station_lat", "LONGITUDE": "station_lon","NAME": "station_name", "WMO ID" : "station_lookup_id"}), 
    on="closest_station_id", how='left')

def compute_distance(row):
    centroid = (row['centroid'].y, row['centroid'].x)  # Get centroid coordinates
    station = (row['station_lat'], row['station_lon'])  # Get station coordinates
    return geodesic(centroid, station).miles  # Compute distance in miles

gdf['distance_from_station'] = gdf.apply(compute_distance, axis=1)

gdf.distance_from_station.describe()

# URL of the file to download

def get_dly(dly_file):
    url = f"https://www.ncei.noaa.gov/pub/data/ghcn/daily/all/{dly_file}.dly"
    response = requests.get(url)
    assert response.status_code == 200
    content = response.content.decode('utf-8')
    lines = content.split('\n')
    data = []
    for line in lines:
        if line:
            id_ = line[0:11]
            year = int(line[11:15])
            month = int(line[15:17])
            element = line[17:21]
            for day in range(31):
                start = 21 + day * 8
                end = start + 5
                if line[start:end].strip():
                    value = int(line[start:end])
                    mflag = line[start+5]
                    qflag = line[start+6]
                    sflag = line[start+7]
                    record = {
                        'ID': id_,
                        'YEAR': year,
                        'MONTH': month,
                        'DAY': day + 1,
                        'ELEMENT': element,
                        'VALUE': value,
                        'MFLAG': mflag,
                        'QFLAG': qflag,
                        'SFLAG': sflag,
                    }
                    data.append(record)
    df = pd.DataFrame(data)
    df["closest_station_id"] = dly_file
    return(df)

station_dlys = gdf.closest_station_id.unique().tolist()
all_weather = pd.concat([get_dly(station_dly) for station_dly in tqdm(station_dlys)])
all_weather.shape
all_weather = all_weather[all_weather.YEAR >= 2010]
all_weather.shape
# https://www.ncei.noaa.gov/pub/data/ghcn/daily/readme.txt
all_weather['DATE'] = pd.to_datetime(all_weather[['YEAR', 'MONTH', 'DAY']], errors='coerce')
all_weather = all_weather[all_weather.DATE.notnull()]

gdf.to_csv("output/county_weather_stations.csv.gz", index=False, compression='gzip')
all_weather = all_weather[["closest_station_id","DATE","ELEMENT","VALUE", "MFLAG","QFLAG","SFLAG"]]
all_weather = all_weather[all_weather.VALUE != -9999]
all_weather = all_weather.drop_duplicates()
duplicates = all_weather[all_weather.duplicated(['closest_station_id', 'DATE', "ELEMENT"], keep=False)]
all_weather = all_weather[["closest_station_id","DATE","ELEMENT","VALUE"]]
all_weather.to_csv("output/weather_over_time.csv.gz", index=False, compression='gzip')
