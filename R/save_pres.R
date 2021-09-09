#' Save plot using sizes optimal for (16:9) slide presentation.
#'
#' Wraps ggsave to save plots in specified column widths for presentation.
#' Default height is set to the default height of the bullet textbox in
#' LibreOffice Impress. Default width is calculated from golden ratio of the
#' height.
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
        width = 5.8248,
        height = 3.606,
        scale = scale,
        units = "in")
}
