#' Convert from pt to mm for ggplot2
#'
#' ggplot2 uses mm by default for line units, this function takes the desired
#' thickness in pt and converts to mm.
#'
#'
#' @keywords ggplot2 unit pt mm
#' @export pt_to_mm
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_line(size=pt_to_mm(0.75))

pt_to_mm <- function(x_pt) {
    ## Convert x from pt to mm (for, e.g., ggplot2 linewidths).
    return(x_pt / ggplot2::.pt)
}
