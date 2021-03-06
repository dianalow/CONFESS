% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fluo_NBE.R
\name{Fluo_modeling}
\alias{Fluo_modeling}
\title{Fluo_modeling}
\usage{
Fluo_modeling(data, init.path, VSmethod = "DDHFmv", CPmethod = "ECP",
  CPgroups = 5, CPpvalue = 0.05, CPmingroup = 10, seed = NULL)
}
\arguments{
\item{data}{List. The output of pathEstimator().}

\item{init.path}{Numeric vector. The cell path progression as it has been estimated by
pathEstimator() or a user-defined path that can be deduced from Fluo_inspection(). The latter
is suggested only when path.type = "other" in pathEstimator().}

\item{VSmethod}{Character string. The variance stabilization transformation method to be applied
to the corrected fluorescence data prior to the change point analysis. IT can be one of "log"
or "DDHFmv". Default is "DDHFmv".}

\item{CPmethod}{Character string. The change point method to be used. It can be one of "ECP",
(non-parametric) "manualECP" (non-parametric with user-defined numner of change-points) or
"PELT" (Pruned Exact Linear Time; parametric). Default is ECP.}

\item{CPgroups}{Integer. The number of change-points to be kept if CPmethod = "manualECP".
Default is 5.}

\item{CPpvalue}{Float. The significance level below which we do not reject a change point.
Default is 0.05.}

\item{CPmingroup}{Integer. The minimum number of values for a cluster re-estimated by the
change-point analysis. Default is 10.}

\item{seed}{Integer. An optional seed number for the Random Number Generator. Note that this seed is a 'reference'
value of the actual seed used in sampling. CONFESS is using various random sampling methods. Each method's
actual seed is factor*seed. The factors vary across methods. Default is NULL.}
}
\value{
A list of corrected fluorescence signal estimates, the pseudotimes and the cell progression clusters.
  The output is essentially the output of pathEstimator() with the addition of the following components:
  UpdatedPath: the updated progression path after re-estimation by change points and clustering.
  DataSorts: a matrix contains the calculated distances by orthogonal projection and the pseudotimes.
  DDHFupdate: it takes TRUE or FALSE to signify whether the clustering/pseudotime estimation has been updated by the re-estimation
    procedure.
  corrected.VStransformed.exprs: the background and run effect transformed corrected channel signals (by one of "log" or "DDHFmv"). The
    transformation is defined in the VSmethod parameter.
  VSmethod: the transformation that has been applied to the channel signals.
  Progression: it describes the estimated progression by the pseudotimes (first column) and the differences between the transformed channel
    signals.
  Updated.groups: the final clusters.
  CPs: the final change points detected.
  CPmethod: the CPmethod parameter used.
  CPsig: the CPpvalue parameter used.
  CPgroups: the CPgroups parameter used.
  CPmingroup: the CPmingroup parameter used.
}
\description{
It takes the initial groups and the path progression and estimates the pseudotimes of cell
  progression and the associated change-points (updated cell clusters).
}
\examples{
step4<-Fluo_modeling(data=step3.1,init.path=step3.1$Path,VSmethod="DDHFmv",
                     CPmethod="ECP",CPpvalue=0.01)
}
