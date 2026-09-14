This folder contains code and data to replicate the empirical analysis in Masten and Poirier (2020).

The raw data is /data/master_data.dta, which we obtained from the replication files for 

Duranton, Morrow, and Turner (2014) "Roads and Trade: Evidence from the US", The Review of Economic Studies, Volume 81, Issue 2, pages 681-724

which are available at https://academic.oup.com/restud/article-abstract/81/2/681/1519232.

To replicate all of our results, follow these steps:

1. Make sure you have 

ivreg2 (version 04.1.11)
estout (version 3.21)
outreg2 (version 2.3.2)
texsave (version 1.4.1)
ranktest (version 2.0.04)

installed in Stata (for example, use 'ssc install ivreg2, replace'). The version numbers given here are the ones we used. As specified in our code, we use Stata version 12.1.

2. Change line 12 of main.do to your local file path containing the base replication folder.

3. Run main.do.

4. output/out.tex will compile the latex tables that are created, for you to read.