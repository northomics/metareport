# library(ggplot2)
# 
# 
# df <- data.frame(class = rnorm(100), drv = as.character(rnorm(100)))
# 
# 
# g <- ggplot(df, aes(class))
# # Number of cars in each class:
# g + geom_bar(aes(fill = drv))
# 
# 
# 
# 

# 
# myfile <- RCurl::getURL("https://raw.githubusercontent.com/ningzhibin/rmdocpu/master/inst/rmd/MQ_report_summary.Rmd")
# 
# # RCurl::getURL does not work on 
# 
#  myfile <- httr::GET("https://raw.githubusercontent.com/ningzhibin/rmdocpu/master/inst/rmd/simple_markdown.Rmd")
# 
# rmarkdown::render(rawToChar(myfile$content),output_format = "html_document", output_file="output.html")
# 
# 
# rmarkdown::render(input = "https://raw.githubusercontent.com/ningzhibin/rmdocpu/master/inst/rmd/simple_markdown.Rmd",output_format = "html_document", output_file="output.html")
# 
# rmarkdown::render(https://raw.githubusercontent.com/ningzhibin/rmdocpu/master/inst/rmd/simple_markdown.Rmd, output_format = "html_document", output_file="output.html")
# 
# 
# 
# writeLines(rawToChar(myfile$content), con="input.Rmd");
# 
# rmarkdown::render("input.Rmd",output_format = "html_document", params = list(summary_file_tbl =  data_table), output_file="output.html")
# 
# 
