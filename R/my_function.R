

divide <- function(x){

  # Tilføj tjek som sørger for at input argument x != character
  if(is.character(x)){
    stop("x is of type character. Supply value of type numeric or factor")
  }

  x/100

}







#' Function to mask emails
#'
#' @param x character string that should be masked
#'
#' @description
#'
#' `replace_email()` takes an input string and looks for common email structure. If an email is found ,it replaces the email
#' with `[email]`
#'
#' @return string with email masked as `[email]`
#' @export
#'
#' @examples
#' replace_email("my test string")
replace_email <- function(x){

  stringr::str_replace_all(x, "\\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]+\\b", "[email]") # Common email pattern

}
