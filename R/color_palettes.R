#' Color blind-friendly color palettes for plots
#'
#' Color blind-friendly palettes and plot colors I like. Palettes taken from
#' http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#palettes-color-brewer
#' @keywords color palette theme ggplot2
#' @export cbPalette
#' @export cbbPalette
#' @export ChangRed
#' @export BrickRed
#' @export SoloBlue
#' @export cb_gray
#' @export cb_orange
#' @export cb_lightblue
#' @export cb_green
#' @export cb_yellow
#' @export cb_blue
#' @export cb_red
#' @export cb_pink
#' @export cb_black
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_point(aes(color = as.factor(cyl))) + scale_color_manual(values = cbPalette)

# Color blind colors
cb_gray <- "#999999"
cb_orange <- "#E69F00"
cb_lightblue <- "#56B4E9"
cb_green <- "#009E73"
cb_yellow <- "#F0E442"
cb_blue <- "#0072B2"
cb_red <- "#D55E00"
cb_pink <- "#CC79A7"
cb_black <- "#000000"

# Palette with gray
cbPalette <- c(cb_gray,
               cb_orange,
               cb_lightblue,
               cb_green,
               cb_yellow,
               cb_blue,
               cb_red,
               cb_pink)

# Palette with black
cbbPalette <- c(cb_black,
                cb_orange,
                cb_lightblue,
                cb_green,
                cb_yellow,
                cb_blue,
                cb_red,
                cb_pink)


# Individual colors, good for monocolors or to highlight certain plot elements
BrickRed <- "#B5251C"  # from LaTeX

ChangRed <- "#D12413"  # from "Physical Chemistry" by Raymond Chang

SoloBlue <- "#2096BA"
