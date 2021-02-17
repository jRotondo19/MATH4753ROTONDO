#' @title Mode
#'
#' @description This function will get the mode of a dataset.
#'
#' @details R has no built in function for the mode of a vector so this function calculates the most often value in a vector.
#'
#' @param v this is the vector of objects needing a mode
#'
#' @return most often data value of a given vector v.
#' @export
#'
#' @examples
#' \dontrun{
#' mode <- getmode (c(4, 6, 6, 8))
#' mode holds the value of 6.
#' }

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))] #tabulates the uniqueness of a data value in a vector
}
