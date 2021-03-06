% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{pval_plot}
\alias{pval_plot}
\title{Plot one-tailed p-values}
\usage{
pval_plot(yi, vi, alpha.select = 0.05)
}
\arguments{
\item{yi}{A vector of point estimates to be meta-analyzed. The signs of the estimates should be chosen
such that publication bias is assumed to operate in favor of positive estimates.}

\item{vi}{A vector of estimated variances for the point estimates}

\item{alpha.select}{Alpha-level at which publication probability is assumed to change}
}
\description{
Plots the one-tailed p-values. The leftmost red line indicates the cutoff for one-tailed p-values less than 0.025
(corresponding to "affirmative" studies; i.e., those with a positive point estimate and a two-tailed p-value
less than 0.05). The rightmost red line indicates one-tailed p-values greater than 0.975 (i.e., studies with a
negative point estimate and a two-tailed p-value less than 0.05). If there is a substantial point mass of p-values
to the right of the rightmost red line, this suggests that selection may be two-tailed rather than one-tailed.
}
\examples{

 # compute meta-analytic effect sizes
 require(metafor)
 dat = metafor::escalc(measure="RR", ai=tpos, bi=tneg, ci=cpos, di=cneg, data=dat.bcg)

 # flip signs since we think publication bias operates in favor of negative effects
 dat$yi = -dat$yi

 pval_plot( yi = dat$yi,
            vi = dat$vi )
}
\references{
1. Mathur MB & VanderWeele TJ (2020). Sensitivity analysis for publication bias in meta-analyses. \emph{Journal of the Royal Statistical Society, Series C.} Preprint available at https://osf.io/s9dp6/.
}
