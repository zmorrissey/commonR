#' Save plots in 1-, 1.5-, or 2-column width for manuscripts
#'
#' Wraps ggsave to save plots in specified column widths for publication.
#' @keywords save plot ggsave ggplot2
#' @param title Title of plot
#' @param col_width Column width (default = 1)
#' @param path Save path (default is getwd() value)
#' @param scale Scale of plot (default = 1)
#' @export
#' @examples
#' p <- ggplot(mtcars, aes(mpg, wt)) + geom_point()
#' save_col("mtcars-1col.png")  # single-column width
#' save_col("mtcars-1.5col.png", col_width = "2")  # double-column width


save_col <- function(title,
                     col_width = "1",
                     path = ".",
                     scale = 1) {

    col_widths <- list("1" = 85,
                       "1.5" = 114,
                       "2" = 300)

    ggsave(filename = title,
           path = path,
           dpi = 300,
           width = col_widths[[col_width]],
           height = 85,
           scale = scale,
           units = "mm")
}
