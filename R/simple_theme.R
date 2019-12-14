#' Custom ggplot2 theme
#'
#' Simple and clean customized ggplot2 theme.
#'
#' @keywords ggplot2 theme
#' @export
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_point() + simple_theme()

simple_theme <- function() {
    theme(
        panel.background = element_blank(),
        panel.grid.major = element_line(color = "#D8D8D8"),
        axis.ticks = element_blank()
)
}
