#' Compute standard error of the mean
#'
#' Convenience function for computing standard error of the mean.
#' @param v Numerical vector to compute the standard error of.
#' @keywords standard error
#' @export
#' @examples
#' sem(rnorm(n=50, mean=5, sd=1))

sem <- function(v) {
    return(sd(v) / sqrt(length(v)))
}
