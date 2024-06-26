% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Function.R
\name{parse_function}
\alias{parse_function}
\title{Parse a function call}
\usage{
parse_function(s)
}
\arguments{
\item{s}{A string of function call.}
}
\value{
A list that contains the namespace of the function, the function name,
the socket which the input is plugged into, and all the options that have been
specified in this function call.
}
\description{
Parse a function call.
}
