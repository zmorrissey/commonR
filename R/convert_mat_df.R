#' Convert connectome matrix data to long form tidy data
#'
#' Converts connectome matrix data type (e.g. from Matlab or Numpy) to
#' ggplot2-friendly format for use with geom_tile(). Assumes rownames and colnames
#' exist and are the ROI labels.
#'@param mat Matrix data to convert
#' @keywords matrix plot ggplot2
#' @export
#' @examples
#' foo <- convert_mat_df(matrix(data=rnorm(n=25), nrow=5, ncol=5))

convert_mat_df <- function(mat) {
    df <- as.data.frame(mat) %>%
        mutate(Var1 = factor(row.names(.), levels = row.names(.))) %>%
        gather(key = Var2, value = value, -Var1, na.rm = TRUE, factor_key = TRUE) %>%
        as_tibble()

    return(df)
}
