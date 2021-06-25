#' Save plot using sizes optimal for (16:9) slide presentation.
#'
#' Wraps ggsave to save plots in specified column widths for presentation.
#' @keywords save plot ggsave ggplot2
#' @param title Title of plot
#' @param path Save path (default is getwd() value)
#' @param scale Scale of plot (default = 1)
#' @export
#' @examples
#' p <- ggplot(mtcars, aes(mpg, wt)) + geom_point()
#' save_pres("mtcars.png")

save_pres <- function(filename, scale = 1) {
    ggsave(
        filename = filename,
        dpi = 600,
        width = 6,
        height = 4,
        scale = scale,
        units = "in")
}
