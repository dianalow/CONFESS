% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/internal_fluo_est.R
\name{getCsFAIL}
\alias{getCsFAIL}
\title{getCsFAIL}
\usage{
getCsFAIL(centerR, centerG, origImg, chaImgs, minDiff, despeckle,
  ImgLimits, BFarea, chip.type, separator, image.type)
}
\arguments{
\item{centerR}{Data matrix. The location statistics of one channel.}

\item{centerG}{Data matrix. The location statistics of the other channel.}

\item{origImg}{Data matrix. The original BF image to be read and processed.}

\item{chaImgs}{List. A list of the channel images (data matrices) of a sample.}

\item{minDiff}{Float. the mu_hat of the H0: image-to-noise ratio =
log(foreground_signal) - log(background_signal) = mu_hat. Rejection of H0
implies that the identified spot is brighter than background.}

\item{despeckle}{Logical. If TRUE, the BF image is descpeckled.}

\item{ImgLimits}{Integer. It instructs the algorithm to find spots in a certain central image area.
For example, for a 512 x 512 image with ImgLimits = 50, it will search for spots in
the central area [ImgLimits:(512-ImgLimits),ImgLimits:(512-ImgLimits)] of the image matrix.}

\item{BFarea}{Integer. Defines a rectangular pseudo-spot size whose fluorescence will be estimated.}

\item{chip.type}{Character string. It specifies the type of Fluidigm chip to be analyzed.}

\item{separator}{Character string. Removes the Bright Field ("BF") and channel indicators from the
image file names.}

\item{image.type}{Character string. A triplet of IDs to characterize the type of images under study.
They refer to the ImageType part of the original image or txt file names.}
}
\value{
Location statistics under BF image modelling
}
\description{
A helper to re-estimate the spot location or find the capture site location
  (BF image modelling).
}
\keyword{internal}
