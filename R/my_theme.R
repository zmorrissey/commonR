#' Custom ggplot2 theme
#'
#' Some simple tweaks to the default ggplot2 theme for exploratory data analysis
#' or informal presentations.
#'
#' @keywords ggplot2 theme
#' @export theme_zdm
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_point() + my_theme()

theme_zdm <- function() {
    theme(
        ## Legend
        legend.title = element_text(size = 14),
        legend.text = element_text(face = "plain",
                                   size = 12),

        ## Axes
        axis.title.x = element_text(size = 16,
                                    margin = margin(t = 20,
                                                    b = 0,
                                                    l = 0,
                                                    r = 0)),
        axis.title.y = element_text(size = 16,
                                    margin = margin(t = 0,
                                                    b = 0,
                                                    l = 0,
                                                    r = 20)),
        axis.text.x = element_text(face = "plain",
                                   size = 12,
                                   color = "black"),
        axis.text.y = element_text(face = "plain",
                                   size = 12,
                                   color = "black"),
        axis.line = element_line(size = 1),
        axis.ticks = element_line(size = 1),
        axis.ticks.length = unit(0.25, "cm"),

        ## Title
        plot.title = element_text(face = "bold",
                                  size = 22,
                                  color = "black",
                                  margin = margin(t = 10,
                                                  b = 10,
                                                  l = 0,
                                                  r = 0)),

        ## Facets
        strip.text.x = element_text(size = 14, color = "black"),
        strip.text.y = element_text(size = 14, color = "black"),

        ## Background
        panel.background = element_blank()
)
}
