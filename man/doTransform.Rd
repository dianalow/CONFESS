% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/internal_fluo_NBE.R
\name{doTransform}
\alias{doTransform}
\title{doTransform}
\usage{
doTransform(data, transformation, lpar = NULL)
}
\arguments{
\item{data}{Data matrix. The adjusted signals of both channels.}

\item{lpar}{Float. The lambda parameter of the Box-Cox.}

\item{transform}{Character string. The type of transformation to be performed. One
of "bc" (Box-Cox), "log", "log10" or "asinh".}
}
\value{
The transformed data matrix
}
\description{
It transforms the adjusted fluorescence signals of a matrix.
}
\keyword{internal}
