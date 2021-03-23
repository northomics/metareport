#' A wrapper function of rmarkdown::render for opencpu
#'
#' It will put the curl the url, have the content into an input.rmd file, then render source r markdown code/file content into html files, to be retrieved on the client end
#' 
#' Not meant for general users
#'
#' @param rmd_url For render_rmd_url, a string of public accessible url
#'
#' @return no direct return, but write an output.html to the temp session on the opencpu server
#' @seealso \code{\link{render}}  \code{\link{knit}}
#' @examples
#'   render_rmd_url("https://raw.githubusercontent.com/ningzhibin/rmdocpu/master/inst/rmd/input.Rmd")
#'



render_rmd_url <- function(rmd_url){
  ## for test rmd_url https://raw.githubusercontent.com/ningzhibin/rmdocpu/master/inst/rmd/MQ_report_proteinGroups.Rmd
  myfile <- RCurl::getURL(rmd_url)
  writeLines(myfile, con="input.Rmd");
  # render function does not recoganize remote file, but only local file
  
  rmarkdown::render("input.Rmd",output_format = "html_document", output_file="output.html")
  
  invisible()
}



