#' Plot matrix using ggplot2
#'
#' Plot matrix analagous to Matlab's imagesc function.
#' @param df Matrix data
#' @keywords matrix ggplot2
#' @export
#' @examples
#' foo <- convert_mat_df(matrix(data=rnorm(n=25), nrow=5, ncol=5))
#' imagesc(foo)

imagesc <- function(df, scale_label = "") {
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
        scale_fill_viridis(name = scale_label) +
        labs(x = "", y = "") +
        theme(axis.text = element_blank(),
              axis.ticks = element_blank()) +
        coord_equal()
}
