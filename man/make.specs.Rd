\name{make.specs}
\Rdversion{1.1}
\alias{make.specs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Construct cell specifications for a tableplot
}
\description{
Construct one or more sets of of cell specifications for a tableplot,
using the arguments to \code{cellgram}, to be used as
the \code{assign.sets} argument in a \code{tableplot}.
}
\usage{
make.specs(n = NULL, as.data.frame = FALSE, subset, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
  If specified, determines the number of cell specifications generated.
  Otherwise, the maximum length of any of the \code{dots} argument.
}
  \item{as.data.frame}{
If \code{TRUE}, returns the result as a data.frame.
Mainly for viewing the results in an easier way.
}
  \item{subset}{
A list of names of the arguments to \code{cellgram} to be included
in the result.  Mainly used for showing simplified examples.
}
  \item{\dots}{
Arguments to \code{cellgram}, each given as a single element or a vector.
Each argument is replicated to the length of the longest one.
}
}
\details{
The function uses \code{formals(cellgram)[-1]} to retrieve the names of arguments
and default values that can be included in \code{assign.sets}.
}
\value{
Unless \code{as.data.frame} is \code{TRUE}, returns a list of lists
of arguments to \code{cellgram} that can be used as the \code{assign.sets}
argument of \code{tableplot}.
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Michael Friendly
}
%\note{
%%  ~~further notes~~
%}


\seealso{
\code{\link{cellgram}}
}
\examples{
# generate 4 sets of cell specifications
specs <- make.specs(
	shape=c(0, 0, 0, 2),           #  circles and squares
    cell.fill=c("red","blue","green", "grey40"),
	back.fill="white",
	scale.max=100
	)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ utilities }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
