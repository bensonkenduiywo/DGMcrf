#' Column numbers
#'
#' Assigns numbers as names to columns of a data frame
#'
#' The function assign numbers as columns of a dataframe that is passed as an argument.
#'
#' @param prefix A character preceding df column numbers
#' @param x A dataframe
#' @export give_col_numbers
#' @return A dataframe with new column names
#' @examples
#' ## Rename the columns in an in-built data set
#' give_col_numbers(iris)
#'
give_col_numbers <- function(x, prefix = "col."){
  names(x) <- paste0(prefix, seq(1,ncol(x), 1))
  bits <- int_2_bit(1:nrow(x))
  return(x)
}
#' Integer to bits
#'
#' Convert integers into bit format
#'
#' This function converts 32 bit integers and raw vector type.
#'
#' @param x integer
#' @param bit type
#' @return a list of integer
#' @examples
#' int_2_bit(1:10)
#'
int_2_bit <- function(x, bit.type = 8) {
  x <- list(x)
  l <- lapply(x, function(y) as.integer(intToBits(y)[bit.type:1]))
  return(l)
}

# function to calculate Mean Square Error
mse <- function(predicted, observed) {
  mean((predicted - observed)**2, na.rm = T)
}
