#' Custom ggplot2 theme for publication
#'
#' Publication-quality theme, modeled after the Nature final artwork guidelines.
#' See https://www.nature.com/nature/for-authors/final-submission for details.
#'
#'
#' @keywords ggplot2 theme
#' @export theme_pub
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_point() + theme_pub()

### Font and text sizes (units = pt)
titlesize <- 7
axis_titlesize <- 6
axis_textsize <- 5
ticklength <- 3  # pt
linewidth <- 0.176  # mm (= 0.5 pt)

theme_pub <- function() {
    theme(
        ## Axes
        axis.title.x = element_text(size = axis_titlesize),
        axis.title.y = element_text(size = axis_titlesize),
        axis.text.x = element_text(
            face = "plain",
            size = axis_textsize,
            color = "black"),
        axis.text.y = element_text(
            face = "plain",
            size = axis_textsize,
            color = "black"),
        axis.line = element_line(size = linewidth),
        axis.ticks = element_line(size = linewidth),
        axis.ticks.length = unit(ticklength, "pt"),

        ## Legend
        legend.title = element_text(size = axis_titlesize),
        legend.text = element_text(
            face = "plain",
            size = axis_textsize),
        legend.box.background = element_blank(),
        legend.key = element_blank(),

        ## Title
        plot.title = element_text(
            face = "plain",
            size = titlesize,
            color = "black"),

        ## Facets
        strip.text.x = element_text(size = axis_titlesize, color = "black"),
        strip.text.y = element_text(size = axis_titlesize, color = "black"),
        strip.background = element_blank(),

        ## Background
        panel.background = element_blank()
)
}