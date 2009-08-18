\name{vif}
\alias{vif}
\title{Fitting Linear Models using VIF-Regression}
\description{ 
  \code{vif} selects variables for a linear model. It returns a subset of variables for building a linear model.
}

\usage{
	vif(y, x, w0 = 0.05, dw = 0.05, subsize = 200, trace = TRUE, mode = c("dense", "sparse"))
}

\arguments{
  	\item{y}{ the response. }
  	\item{x}{ an optional data frame or matrix containing the variables in the model.}
  	\item{w0}{ the initial wealth.}
  	\item{dw}{ the incremental wealth attained if a variable is included in the model.}
  	\item{subsize}{ the size of the subsample to approximate the variance inflation factor.}
  	\item{trace}{ logical. if \code{TRUE} a list containing current wealth, current test level, absolute \eqn{t} value and \eqn{p}-value for the current variable will be printed out.}
  	\item{mode}{ \code{"dense"} or \code{"sparse"}, specifying one of the two alpha-investings that should be used. Default is \code{"sparse"}.}
}

\value{
  	A list containing: 
  	\item{select}{ the chosen subset of variable. }
  	\item{modelmatrix}{ the model matrix that is ready for fitting a linear model.  }
}

\author{ 
	Dongyu Lin \email{dongyu@wharton.upenn.edu}
}

\references{
	Lin, D., Foster, D.F. and Ungar, L.H. (2009) VIF-Regression: A Fast Regression Algorithm for Large Data. 
	\url{http://stat.wharton.upenn.edu/~dongyu/Papers/VIF.pdf}
}

\examples{

	data(syn);
	vif.sel <- vif(syn$y, syn$x, trace = FALSE);
	vif.sel$select;
	syn$true;
	
	data(housingexp);
	colnames(housingexp$x);
	vif.sel <- vif(housingexp$y, housingexp$x, w0 = 0.005, dw = 0.005, subsize = 300, trace = FALSE);

}

\keyword{regression}
