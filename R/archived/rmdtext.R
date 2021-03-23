#' A wrapper function of rmarkdown::render for opencpu
#'
#' A basic wrapper function to work with opencpu.
#' 
#' It will put the text content into an input.rmd file, then render source r markdown code/file content into html files, to be retrieved on the client end
#' 
#' Not meant for general users
#' 
#' @param text For rmdtext, a string, which is the rmardown coding itself
#' @return no direct return, but write an output.html to the temp session on the opencpu server
#'
#' @seealso \code{\link{render}}  \code{\link{knit}}
#'
#' @examples
#'   path_to_input <- system.file("rmd", rmd_file, package = "rmdocpu")
#'   myfile <- readLines(path_to_input)
#'   rmdtext(myfile)
#'
#'
#'
rmdtext <- function(text){
  writeLines(text, con="input.Rmd");
  rmarkdown::render("input.Rmd", output_file="output.html");
  invisible();
}

