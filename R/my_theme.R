#' Custom ggplot2 theme
#'
#' Some simple tweaks to the default ggplot2 theme for exploratory data analysis
#' or informal presentations.
#'
#' @keywords ggplot2 theme
#' @export
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_point() + my_theme()

my_theme <- function() {
    theme(
        ## Legend
        legend.title = element_text(face = "bold",
                                    size = 14),
        legend.text = element_text(face = "plain",
                                   size = 12),

        ## Axes
        axis.title.x = element_text(face = "bold",
                                    size = 16,
                                    margin = margin(t = 20,
                                                    b = 0,
                                                    l = 0,
                                                    r = 0)),
        axis.title.y = element_text(face = "bold",
                                    size = 16,
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
        strip.text.y = element_text(size = 14, color = "black")
)
}
