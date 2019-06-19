#' List user-installed packages (apart from base installation)
#'
#' See title.
#' @keywords packages installed
#' @export
#' @examples
#' list_installed_packages()

list_installed_packages <- function() {
    ip <- as.data.frame(installed.packages()[, c(1, 3:4)])
    rownames(ip) <- NULL
    ip <- ip[is.na(ip$Priority), 1:2, drop = FALSE]
    print(ip, row.names = FALSE)
}
