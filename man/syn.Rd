\name{syn}
\docType{data}
\alias{syn}
\title{A Synthetic Data set For Testing VIF-Regression}
\description{
	This data set contains a data set that can be used to test the VIF-regression. 	
}
\usage{data(syn)}
\format{
	A list contains:
	\describe{
		\item{\code{y}}{a numeric vector giving the response, 1000 x 1}
		\item{\code{x}}{a numeric matrix of variables, containing 200 variables, 1000 x 200}
		\item{\code{true}}{a vector of true variables that generate \code{y}}
	}		 
}
\keyword{datasets}