\name{utility}
\Rdversion{1.1}
\alias{congruence.coef}
\alias{identity.coef}
\alias{cg.cf}
\alias{id.cf}
\alias{transpose}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Utility functions for tableplots
}
\description{
Utility functions for producing tableplots
}
\usage{
congruence.coef(a, b)
cg.cf(a, b)
identity.coef(a, b)
id.cf(a, b)
transpose(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a}{
A vector of factor or component loadings
}
  \item{b}{
A vector of factor or component loadings
}
  \item{x}{
A matrix or array of 3 dimensions.
}
}
\details{
Congruence coefficients (Burt, 1948; Wrigley & Newhaus, 1955) are used to assess
the similarity of two rows or columns in a factor pattern....

\code{transpose} transposes an array of 2 or 3 dimensions,
where, in the 3D case, transposition is carried out only on the first two dimensions.
Useful to transpose the data for a tableplot. 

}
%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
%}
\references{
Burt, C. L. (1948).
The factorial study of temperamental traits.
\emph{British Journal of Psychology}, 48, 378-399.

Wrigley, C. C. and Newhaus, J. O. (1955).
The matching of two sets of factors.
\emph{The American Psychologist}, 10, 418-419.
}
\author{
Ernest Kwan
}
%\note{
%%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
%\examples{
%}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{utilities}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
