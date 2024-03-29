% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save_pres.R
\name{save_pres}
\alias{save_pres}
\title{Save plot using sizes optimal for (16:9) slide presentation.}
\usage{
save_pres(filename, scale = 1)
}
\arguments{
\item{scale}{Scale of plot (default = 1)}

\item{title}{Title of plot}

\item{path}{Save path (default is getwd() value)}
}
\description{
Wraps ggsave to save plots in specified column widths for presentation.
Default height is set to the default height of the bullet textbox in
LibreOffice Impress. Default width is calculated from golden ratio of the
height.
}
\examples{
p <- ggplot(mtcars, aes(mpg, wt)) + geom_point()
save_pres("mtcars.png")
}
\keyword{ggplot2}
\keyword{ggsave}
\keyword{plot}
\keyword{save}
