#' Color palettes for plots
#'
#' Color palettes and plot colors I like. Color blind-friendly palettes taken
#' from the Cookbook for R (http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#palettes-color-brewer).
#' The Matplotlib default color palette was taken from the documentation (https://matplotlib.org/users/dflt_style_changes.html#colors-in-default-property-cycle).
#'
#' @keywords color palette theme ggplot2
#' @export cb_palette
#' @export cbb_palette
#' @export changred
#' @export brickred
#' @export soloblue
#' @export cb_gray
#' @export cb_orange
#' @export cb_lightblue
#' @export cb_green
#' @export cb_yellow
#' @export cb_blue
#' @export cb_red
#' @export cb_pink
#' @export cb_black
#' @export plt_blue
#' @export plt_orange
#' @export plt_green
#' @export plt_red
#' @export plt_purple
#' @export plt_brown
#' @export plt_pink
#' @export plt_gray
#' @export plt_yellow
#' @export plt_teal
#' @export matplotlib_palette
#' @export offwhite
#' @export vermillion
#' @export etred
#'
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_point(aes(color = as.factor(cyl))) + scale_color_manual(values = cbPalette)


### Color blind-friendly colors ----------------------------------------------
cb_gray      <- "#999999"
cb_orange    <- "#E69F00"
cb_lightblue <- "#56B4E9"
cb_green     <- "#009E73"
cb_yellow    <- "#F0E442"
cb_blue      <- "#0072B2"
cb_red       <- "#D55E00"
cb_pink      <- "#CC79A7"
cb_black     <- "#000000"

### Palette with gray
cb_palette <- c(cb_gray,
                cb_orange,
                cb_lightblue,
                cb_green,
                cb_yellow,
                cb_blue,
                cb_red,
                cb_pink)

### Palette with black
cbb_palette <- c(cb_black,
                 cb_orange,
                 cb_lightblue,
                 cb_green,
                 cb_yellow,
                 cb_blue,
                 cb_red,
                 cb_pink)


### Matplotlib default color cycle -------------------------------------------
plt_blue   <- "#1F77B4"
plt_orange <- "#FF7F0E"
plt_green  <- "#2CA02C"
plt_red    <- "#D62728"
plt_purple <- "#9467bd"
plt_brown  <- "#8C564B"
plt_pink   <- "#E377C2"
plt_gray   <- "#7F7F7F"
plt_yellow <- "#BCBD22"
plt_teal   <- "#17BECF"

matplotlib_palette <- c(plt_blue,
                        plt_orange,
                        plt_green,
                        plt_red,
                        plt_purple,
                        plt_brown,
                        plt_pink,
                        plt_gray,
                        plt_yellow,
                        plt_teal)


### Individual colors to highlight certain plot elements ---------------------
brickred    <-    "#B5251C"  # from LaTeX xcolor package

changred    <-    "#D84529"  # from "Physical Chemistry for the Chemical and
                             # Biological Sciences" by Raymond Chang

soloblue    <-    "#2096BA"

offwhite    <-    "#FFFFF3"  # from https://www.edwardtufte.com/tufte/

vermillion  <-    "#E34234"

etred       <-    "#DC2828"  # from https://www.edwardtufte.com/tufte/
