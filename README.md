# metareport
 Automatic report generation from Metalab result
 For next version of report, including more comprehensive, more options, more ouput format report

# help
The rmarkdown template files are all in \inst\rmd by default. 
The rmarkdown template needs very often update (this package is still under active development), therefore the we let the r wrapper function to read the rmarkdown files directly from github/gitlab.
By doing this, the opencpu server do not need to update this package each time when there is a update of the rmarkdown file if the wrapper function uses the rmarkdown files locally. 
Once the package is relative stabilized, the wrapper function will turn to using rmardown files locally. 

How to setup?
1--In order to use achieve this function, user need to have an opencpu server setup first (check the opencpu website for the installation). You need to write down the api url, like http://ipv4-address/ocpu/library/rmdocpu/R/sub-function-name
It would be better to have one or even more opencpu server as backup. 

2--Install this rmdocpu package from the github

How to use?
First choice is that you can use it in R, as demoed in the R_curl_ocpu_test_debug.R in the rmd folder
Once you know the principle how to upload (post) your data table, and download the report file (curl), you will be able to adapt this in to java, python, javascripit in html. 


version 0.0.6 add support for pdf format report generation (for some slow computers, openning a large html file (with a lot of figures and table will be slow))


