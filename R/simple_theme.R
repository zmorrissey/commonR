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
        ## Axes
        axis.ticks = element_blank(),
        axis.title.x = element_text(
            color = "black",
            size = 14,
            margin = margin(20, 0, 0, 0)),
        axis.title.y = element_text(
            color = "black",
            size = 14,
            margin = margin(0, 20, 0, 0)),
        axis.text = element_text(color = "black", size = 12),

        ## Facets
        strip.background = element_blank(),
        strip.text = element_text(size = 14, color = "black"),

        ## Legend
        legend.title = element_text(size = 14),
        legend.text = element_text(size = 12),
        legend.key = element_blank(),

        ## Panel
        panel.background = element_blank(),
        panel.grid.major = element_line(color = "#D8D8D8"),

        ## Title
        plot.title = element_text(
            size = 16,
            color = "black",
            margin = margin(10, 10, 10, 0))

)
}
