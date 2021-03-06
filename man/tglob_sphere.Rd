% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tglob_sphere.r
\name{tglob_sphere}
\alias{tglob_sphere}
\title{tglob_sphere}
\usage{
tglob_sphere(
  t,
  rh,
  wind,
  solar,
  zenith = 0,
  pair = 1010,
  alb_sfc = 0.4,
  fdir = 0.8,
  diam = 0.05,
  maxair = 10,
  minair = 2,
  prec = 0.01
)
}
\arguments{
\item{t}{numeric        Air temperature in degC.}

\item{rh}{numeric       Relative humidity in percentage.}

\item{wind}{numeric     Mean Wind speed in meter per second.}

\item{solar}{numeric   Global solar radiation in Watt on mq.}

\item{zenith}{numeric   Zenith angle in decimal degrees.}

\item{pair}{numeric     Air pressure in millibar or hPa. Default 1010 hPa.}

\item{alb_sfc}{numeric  Mean albedo of surroundings. Default is 0.4.}

\item{fdir}{numeric     Ratio of directed solar respect to the diffuse.Default is 0.8.}

\item{diam}{numeric     Diameter in meter of globometer. Default is 0.05.}

\item{maxair}{numeric   Upper bound of search range referred to air temperature in degC. Default is 10}

\item{minair}{numeric   Lower bound of search range referred to air temperature in degC. Default is 10}

\item{prec}{numeric      Precision of outcomes.Default is 0.01}
}
\value{
globe temperature in degC
}
\description{
Calculate the globe temperature in degC. 
The code is based on the work James C. Liljegren Decision and Information Sciences Division Argonne National Laboratory.
}
\references{
Liljegren J, Carhart R, Lawday P, Tschopp S, Sharp R,2008, "Modeling Wet Bulb Globe Temperature using Standard Meteorological Measurements" Journal of Occupational and Environmental Hygiene 5, 645-655.
}
\author{
Istituto per la Bioeconomia CNR Firenze Italy  Alfonso Crisci \email{alfonso.crisci@ibe.cnr.it}
}
\keyword{Globometric}
\keyword{temperature.}
