#' Chang theme for ggplot2
#'
#' Custom ggplot2 theme inspired by the plots in Raymond Chang's "Physical
#' Chemistry for the Chemical and Biological Sciences."
#'
#' theme_chang() is a minimal design suited for illustrating single lines,
#' functions, or trends, or distinguishing one particular variable. Theme
#' includes the distinctive red used throughout the book, inward facing axis
#' ticks, and blank background.
#'
#' @keywords ggplot2 theme
#' @export
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_point() + geom_smooth(color = changred, se = FALSE) +theme_chang()

theme_chang <- function(base_size = 11,
                        base_family = "Helvetica",
                        base_line_size = base_size/22,
                        base_rect_size = base_size/22) {
    theme_classic(
        base_size = base_size,
        base_family = base_family,
        base_line_size = base_line_size,
        base_rect_size = base_rect_size) %+replace%

        theme(
            axis.line = element_line(color = "black"),
            axis.ticks = element_line(color = "black", size = rel(1)),
            axis.ticks.length = unit(rel(-10), "pt"),
            axis.text.x = element_text(color = "black",
                                       margin = margin(12, 5, 10, 10, "pt"),
                                       family = "Helvetica",
                                       size = 14),
            axis.text.y = element_text(color = "black",
                                       margin = margin(5, 12, 5, 10, "pt"),
                                       family = "Helvetica",
                                       size = 14),
            panel.background = element_rect(fill = "white",
                                            color = "black",
                                            size = 1),
            axis.title = element_text(size = 16, family = "Helvetica")
            )
}
