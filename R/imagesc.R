#' Plot matrix using ggplot2
#'
#' Plot matrix analagous to Matlab's imagesc function.
#' @param df Matrix data that has been converted to tidy dataframe using convert_mat_df
#' @keywords matrix ggplot2
#' @export
#' @examples
#' foo <- convert_mat_df(matrix(data=rnorm(n=25), nrow=5, ncol=5))
#' imagesc(foo)

imagesc <- function(df) {
    ggplot(df, aes(Var1, Var2, fill = value)) +
        geom_tile() +
        scale_fill_viridis() +
        labs(x = "", y = "") +
        theme(axis.text.x = element_text(angle = 90))
}
