#' Plot matrix using ggplot2
#'
#' Plot matrix analagous to Matlab's imagesc function.
#' @param df Matrix data
#' @param scale_label Label to be applied to the colorbar scale (blank by default)
#' @param cmap_option Choose colormap among viridis scales (default)
#' @keywords matrix ggplot2
#' @export
#' @examples
#' imagesc(matrix(data = rnorm(n = 25), nrow = 5, ncol = 5))

imagesc <- function(df,
                    scale_label = "",
                    cmap_option = "viridis") {
    ## Check input data class
    if(!any(class(df) == "data.frame")) {
        if(class(df) == "matrix") {
            df <- convert_mat_df(df)
        } else {
            stop("Input is not of class 'matrix' or 'data.frame'.")
        }
    }

    ## Visualize
    ggplot(df, aes(rev(Var1),
                   Var2,
                   fill = value)) +
        geom_tile() +
        scale_fill_viridis(name = scale_label, option = cmap_option) +
        labs(x = "", y = "") +
        guides(fill = guide_colorbar(
                   barwidth = 1,
                   barheight = 15,
                   label.theme = element_text(size = 12),
                   draw.ulim = TRUE,
                   draw.llim = TRUE)) +
        theme(axis.text = element_blank(),
              axis.ticks = element_blank()) +
        coord_equal()
}
