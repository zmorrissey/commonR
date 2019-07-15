#' Save plots in 1-, 1.5-, or 2-column width for manuscripts
#'
#' Wraps ggsave to save plots in specified column widths for publication.
#' @keywords save plot ggsave ggplot2
#' @examples
#' p <- ggplot(mtcars, aes(mpg, wt)) + geom_point()
#' save_1col("mtcars-1col.png")
#' save_1.5col("mtcars-1.5col.png")
#' save_2col("mtcars-2col.png")


save_1col <- function(title, path = ".", scale = 1) {
    ggsave(filename = title,
           path = path,
           dpi = 300,
           width = 85,
           height = 85,
           scale = scale,
           units = "mm")
}

save_1.5col <- function(title, path = ".", scale = 1) {
    ggsave(filename = title,
           path = path,
           dpi = 300,
           width = 114,
           height = 85,
           scale = scale,
           units = "mm")
}


save_2col <- function(title, path = ".", scale = 1) {
    ggsave(filename = title,
           path = path,
           dpi = 300,
           width = 174,
           height = 85,
           scale = scale,
           units = "mm")
}
