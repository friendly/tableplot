\name{compare}
\Rdversion{1.1}
\alias{compare}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate factor comparison statistics
}
\description{
Function to facilitate the comparison of two or more factor patterns
stored as a 3-dimensional array. 
If only two patterns, a matrix of differences is calculated.
If three of more patterns, a matrix of standard deviations is calculated
}
\usage{
compare(X)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
A 3 dimensional array, where the last dimension corresponds to 
different studies or factor solutions.
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
A matrix comparing the factor solutions
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Ernest Kwan
}
%\note{
%%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{congruence.coef}}
}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ utilities }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
