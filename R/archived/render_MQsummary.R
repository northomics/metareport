
#' wrapper function of rmarkdown::render for opencpu to render a report for maxquant summary
#'
#' This function works on the opencpu server end, to produce an html file to send to the front end.
#' It also works in standalone mode, to generate a report file, output.html in the currrent folder, using a public accessible rmd file on github. Of course, this need internet connection to run
#'
#'
#' core function, only for testing
#'
#' @param data_table the table is a matrix/data.frame/tble on the server ond, json formted on the front end opencpu will do the conversion automatically
#'
#' @return no direct return, but write an output.html to the temp session on the opencpu server
#' @seealso \code{\link{render}}  \code{\link{knit}} \code{\link{render_MQsummary_file}}
#' @examples
#'   summary_table  <- read_tsv("22122017_Colon_Aging_summary.txt", col_names = TRUE)
#'   render_MQsummary(summary_table)
#'
#'
#'




render_MQsummary <- function(data_table){
  myfile <- RCurl::getURL("https://raw.githubusercontent.com/ningzhibin/rmdocpu/master/inst/rmd/MQ_report_summary.Rmd")
  writeLines(myfile, con="input.Rmd");
  # render function does not recoganize remote file, but only local file
  rmarkdown::render("input.Rmd",output_format = "html_document", params = list(summary_file_tbl =  data_table), output_file="output.html")
  
  invisible()
}