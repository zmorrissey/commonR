#' Save ggplot in multiple file formats simultaneously.
#'
#' Save ggplot in multiple file format simultaneously. User can input the
#' specific file types. Defaults are PDF and PNG.
#' @keywords save plot ggsave ggplot2
#' @param filename Name of file
#' @param width Width of plot (defaults to current graphics device width)
#' @param height Height of plot (defaults to current graphics device height)
#' @param filetypes Vector of file types to save.
#' @export
#' @examples
#' ggplot(mtcars, aes(mpg, wt)) + geom_point()
#' multiggsave("multiggsave-test")


multiggsave <- function(filename, width=dev.size()[1], height=dev.size()[2],
                        filetypes=c("pdf", "png")) {
    ## Save ggplot into multiple file formats simultaneously.
    ##
    ## Parameters
    ## ----------
    ##
    ## filename : string
    ##     Name of file *without* file extension
    ##
    ## width, height : numeric
    ##     Width and height of figure in inches. Defaults to current
    ##     graphics device size
    ##
    ## filetypes : vector
    ##     Vector of file extensions to save plot as. Defaults are PDF and
    ##     PNG.
    filenames <- unlist(lapply(paste0(filename, "."), paste0, filetypes))
    purrr::map(filenames,
               ~ ggplot2::ggsave(.x, width=width, height=height, dpi=600))
}
