# metareport

 The only function/purpose is Automatic report generation from Metalab result.
 The main function metareport provides an interface to take data table in and render rmd template into report.
 This package is now under active development for Metalab HGM version only. 

# help

There is only one function {metareport} to include all options.
The main input files are data_table (summary, peptide, protein, taxon or function)
There are internal rmarkdown template files in \inst\rmd by default. Users can specify there own templates by url

How to setup?
1--In order to use achieve this function from openCPU server, users need to have an opencpu server setup first (check the opencpu website for the installation). 
You need to write down the api url, like http://ipv4-address/ocpu/library/rmdocpu/R/sub-function-name
It would be better to have one or even more opencpu server as backup. 

Otherwise you can also use these template locally

2--Required packages
rmetalab package from the github provides required basic functions for data processing
metapreport inlcudes the interface and all basic functions

How to use?
This pacakge can be used in local R environment.
The point is the ability of using it on remove openCPU server
Once you know the principle how to upload (post) your data table, and download the report file (curl), you will be able to adapt this in to java, python, javascripit in html. 



# change log

V 0.0.9 (20220215) file organization, built test 

V 0.0.8 (20211019) add a unified function function with parameters to evoke all reports, old function still kept

V 0.0.7, using rio::import to read tsv/csv file. This will generalize the file input. e.g. the function.csv is a csv file, while all others files are tsv.
uisng rio:import also helps to avoid some unexpected (e.g. semi quot in csv file) causing incomplete reading. 

V 0.0.6 add support for pdf format report generation (for some slow computers, openning a large html file (with a lot of figures and table will be slow))





