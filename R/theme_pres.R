#' Custom ggplot2 theme for slide presentations
#'
#' ggplot2 theme with font size, linewidths, etc., optimized for slide
#' presentations.
#'
#'
#' @keywords ggplot2 theme
#' @export theme_pres
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_point() + theme_pres()

theme_pres <- function() {
    ## Font and text sizes (units = pt)
    titlesize <- 18
    axis_titlesize <- 16
    axis_textsize <- 14
    ticklength <- 7  # pt
    linewidth <- 0.5

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

        ## Caption
        plot.caption = element_text(
            face = "plain",
            size = axis_textsize,
            color = "black"),

        ## Facets
        strip.text.x = element_text(size = axis_titlesize, color = "black"),
        strip.text.y = element_text(size = axis_titlesize, color = "black"),
        strip.background = element_blank(),

        ## Background
        panel.background = element_blank(),
)
}
