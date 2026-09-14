### table of companies


# filter for verified private security matches

###
### setup
### 

rm(list = ls())
`%+%` <- paste0
source("scripts/config.R")
library(synthdid)
library(tidyverse)
library(lubridate)
library(readxl)
library(haven)
library(data.table)
library(xtable)


#Paths
path_ps_roster_refined <- path_data %+% "returns_moredays_privatesecurity_refined.csv"
path_ps_roster_pitchbook <- path_raw_ps %+% "pitchbook_descriptions.csv.gz"

###
### clean
### 


dt <- fread(path_ps_roster_refined)
dt_summary <- unique(dt[group==3,.(permno,conm,gvkey,tic)])

#dt_pitchbook <- fread(path_ps_roster_pitchbook)
#dt_pitchbook[,tic := Ticker]
#dt_merged <- data.table::merge.data.table(dt_summary,dt_pitchbook,by='tic',all.x=T)

###
###  manual website search
###

dt_summary[conm == 'FORTUNE BRANDS HOME & SECUR',Description := 'Fortune Brands Innovations (NYSE: FBIN) is an industry-leading home, security and digital products company. We’re focused on exciting opportunities within the home, security and commercial building markets.'] #source: company website
dt_summary[conm == 'NORTEK INC', Description := 'Nortek Security & Control LLC (NSC) is a global leader in smart connected devices and systems for residential, security, access control, and digital health markets.'] #source: isc
dt_summary[conm == 'NL INDUSTRIES', Description := 'NL Industries, Inc. is a diversified holding company. NL conducts its component products operations through its majority-owned subsidiary, CompX International, Inc., and owns a significant interest in Kronos Worldwide, Inc., a global producer and marketer of value-added titanium dioxide pigments. CompX International is a diversified domestic manufacturer of engineered, quality components providing critical functionality to our customers’ products. CompX operates through two business segments: CompX Security Products and CompX Marine.'] #website
dt_summary[conm == 'ADT CORP', Description := 'ADT provides safe, smart, and sustainable solutions for people, homes, and small businesses. Through innovative offerings, unrivaled safety, and a premium customer experience—delivered by the largest network of smart home security professionals in the U.S.—ADT empowers people to protect and connect to what matters most, every second, every day.'] #website 
dt_summary[conm == 'CONTROL4 CORP', Description := 'Control4 connects a vast catalog of smart devices, bringing them all into one platform that delivers incredible experiences. Our integrators will personalize your system, automations, and scenes. Replace the many applications you use every day with one interface you can control from your smartphone, touchscreen, on-wall keypads, and more.'] #website
dt_summary[conm == 'ALARM.COM HOLDINGS INC', Description := 'Alarm.com is the award-winning smart home and business security platform that millions of customers depend on every day. Twenty years ago, we reinvented the security system to protect you better from intruders. We`ve been reinventing it ever since, creating a service that protects home and business owners worldwide, including our own friends and families.'] #website
dt_summary[conm == 'OOMA INC', Description := 'Ooma, Inc. is an American publicly traded telecommunications company based in the Silicon Valley, California area. Ooma offers communications services including Voice over IP (VoIP) calling for business, home and mobile users.'] #wiki
dt_summary[conm == 'ATKORE INC', Description := 'Atkore is a global manufacturer with facilities located around the world. Recognized as a leader in electrical, safety, and infrastructure solutions, our products are used to power and protect the world, including Electrical Conduit and Fittings, Cable and Cable Management Systems, Infrastructure Products, and Safety and Security Products. Distributors and contractors globally recognize Atkore as an industry leader and preferred supplier.'] #website
dt_summary[conm == 'ADT INC', Description := 'ADT provides safe, smart, and sustainable solutions for people, homes, and small businesses. Through innovative offerings, unrivaled safety, and a premium customer experience—delivered by the largest network of smart home security professionals in the U.S.—ADT empowers people to protect and connect to what matters most, every second, every day.'] #website 
dt_summary[conm == 'ARLO TECHNOLOGIES INC', Description := 'Arlo combines an intelligent cloud infrastructure and mobile app with a variety of smart connected devices that transform the way people experience the connected lifestyle. Our cloud-based platform creates a seamless, end-to-end connected lifestyle solution that provides users visibility, insight and a powerful means to help protect and connect with the people and things that matter most to them.'] #website
dt_summary[conm == 'EASTERN CO', Description := 'The Eastern Company consists of Big 3 Precision, Eberhard Manufacturing Company, and Velvac. Eberhard is a global leader in the engineering and manufacturing of access and security hardware. Eberhard offers rotary latches, compression latches, draw latches, hinges, camlocks, key switches, padlocks, and handles among other products, as well as comprehensive development and program management services for custom electromechanical and mechanical systems designed for specific original equipment manufacturers (“OEMs”) and customer applications. Eberhard’s products are found in an expansive range of applications and products globally.']
dt_summary[conm == 'DIEBOLD NIXDORF INC', Description := 'Diebold Nixdorf automates, digitizes and transforms the way people bank and shop. As a partner to the majority of the world’s top 100 financial institutions and top 25 global retailers, our integrated solutions connect digital and physical channels conveniently, securely and efficiently for millions of customers every day.'] #website
dt_summary[conm == 'STRATTEC SECURITY CORP', Description := 'At STRATTEC, we deliver a comprehensive range of "Smart" Vehicle Power Access and Electronic and Security Solutions. Our leading portfolio of products and technologies has enabled STRATTEC to grow and thrive over its 110 year history, serving the Automotive Industry & Beyond.'] #website 
dt_summary[conm == 'IES HOLDINGS INC', Description := 'IES designs and installs integrated electrical and technology systems and provides infrastructure products and services to a variety of end markets, including data centers, residential housing, and commercial and industrial facilities. Our more than 9,000 employees serve clients in the United States.'] #website
dt_summary[conm == 'KRATOS DEFENSE & SECURITY', Description := 'Kratos Defense & Security Solutions, Inc, headquartered in San Diego, California,[3] is an American technology company with manufacturing concentrations in weapons and military electronics.'] #wiki
dt_summary[conm == 'ASCENT CAPITAL GROUP INC', Description := 'Ascent Capital Group, Inc. was a publicly traded holding company whose primary subsidiary was Monitronics. Monitronics International was founded in Dallas in 1994 to provide alarm monitoring services to U.S. customers and businesses, as well as financing, technical training and product solutions[clarification needed] to dealers within the industry.'] #wiki


#the following companies are false positives: lets remove them. 
#dt_summary[conm == 'TRANSACT TECHNOLOGIES INC', Description := '']
#dt_summary[conm == 'JABIL INC', Description := 'Jabil Inc. is an American multinational manufacturing company involved in the design, engineering, and manufacturing of electronic circuit board assemblies and systems, along with supply chain services, primarily serving original equipment manufacturers.'] #not really private security


###
### generate table
###

dt_table <- data.table('Company' = dt_summary$conm, 'Description' = dt_summary$Description)
dt_table <- dt_table[Company != 'ADT INC'] #two versions of ADT, remove one



dt <- dt_table[, .(Company, Description)]

# column specs: adjust widths as you like
align <- c("l",
           ">{\\raggedright\\arraybackslash}p{3.5cm}",
           ">{\\raggedright\\arraybackslash}p{20cm}")

xt <- xtable(dt, align = align)

n <- nrow(dt)
add <- list(
  pos = as.list(1:(n-1)),          # after each row except the last
  command = rep("\\midrule\n", n-1)
)

sink(paste0(path_tables, "private_security_descriptions.tex"))
print(xt,
      include.rownames = FALSE,
      include.colnames = TRUE,
      booktabs = TRUE,              # uses \toprule, \midrule, \bottomrule
      hline.after = c(0, n),        # \midrule after header and \bottomrule at end
      add.to.row = add,
      floating = FALSE)             # only the tabular, no table environment
sink()


