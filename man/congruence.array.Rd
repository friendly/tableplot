\name{congruence.array}
\Rdversion{1.1}
\alias{congruence.array}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Congruence coefficients for a 3-way array
}
\description{
Calculates congruence coefficients (or some other statistic) for the
rows and columns of a three-way array over the last dimension (layers) of the
array.

Typically, each layer of the array gives factor or component loadings
for a different sample or rotation.
}
\usage{
congruence.array(X, FUN = congruence.coef, stat.name = "phi", round = FALSE, scale = 1, ref = "last")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
A three-dimensional array
}
  \item{FUN}{
A function of two vector arguments, returning a single number
}
  \item{stat.name}{
Name for the statistic calculated
}
  \item{round}{
If \code{TRUE}, round the \code{scale}ed array to the nearest integer.
If numeric, the the \code{scale}ed array is rounded to the given number
of decimal places.
}
  \item{scale}{
Multiplier for the array returned
}
  \item{ref}{
Reference (baseline) level of the third dimension of \code{X}
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
	An array with one more row and column than \code{X}
	and the same number of layers, containing the calculated statistic in the
	last row and column.
}
%\references{
%%% ~put references to the literature/web site here ~
%}
\author{
Michael Friendly
}
%\note{
%%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{congruence.coef}}, ~~~
}
\examples{
NEO.sm <- transpose(NEO[1:12,,])
congruence.array(NEO.sm, scale=100, round=TRUE)

congruence.array(NEO.sm, FUN=function(a,b) max(abs(a-b)), stat.name="max.diff", round=2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ utilities }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
