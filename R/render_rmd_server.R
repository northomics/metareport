
#' A wrapper function of rmarkdown::render for opencpu
#' 
#' A basic wrapper function to work with opencpu.
#'
#' render_rmd_server will render a local rmd file into html 
#' 
#' core function,  only for debuging and testing
#'
#' @param rmd_file a string of the file name on the same opencpu server in the same metareport package, 
#' @return no direct return, but write an output.html to the temp session on the opencpu server
#' @seealso \code{\link{render}}  \code{\link{knit}}
#' @examples
#'   path_to_input <- system.file("rmd", rmd_file, package = "rmdocpu")
#'   render_rmd_server(path_to_input)
#'

render_rmd_server <- function(rmd_file){
  ## for test use input.Rmd
  path_to_input <- system.file("rmd", rmd_file, package = "metareport")
  
  #myfile <- readLines(path_to_input)
  #writeLines(myfile, con="input.Rmd");
  #rmarkdown::render("input.Rmd",output_format = "html_document", output_file="output.html")
  rmarkdown::render(path_to_input,output_format = "html_document", output_file="output.html")
  
  invisible()
}


