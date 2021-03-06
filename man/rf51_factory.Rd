% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rf51_factory.R
\name{rf51_factory}
\alias{rf51_factory}
\title{factory to create read fort51 file}
\usage{
rf51_factory(.names)
}
\arguments{
\item{.names}{names of columns in the fort51 file}
}
\description{
factory to create read fort51 file
}
\examples{
rf51 <- rf51_factory(c(
"Iteration",
"ID",
"CL",
"V",
"LNTVCL",
"LNTVV",
"CLEGFR",
"nCL",
"nV"
))
# could now do rf51("path/to/fort.51")
}
