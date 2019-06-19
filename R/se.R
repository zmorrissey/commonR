#' Compute standard error of the mean
#'
#' Easy function for computing standard error of the mean (how is this not in base R?).
#' @param v Numerical vector to compute the standard error of.
#' @keywords standard error
#' @export
#' @examples
#' se(rnorm(n=50, mean=5, sd=1))

se <- function(v) {
    return(sd(v) / sqrt(length(v)))
}
