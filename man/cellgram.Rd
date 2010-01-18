\name{cellgram}
\Rdversion{1.1}
\alias{cellgram}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Draw one cell in a tableplot
}
\description{
Draws a graphic representing one or more values for one cell in a tableplot
using shapes whose size is proportional to the cell values.
}
\usage{
cellgram(cell, shape = 0, shape.col = "black", shape.lty = 1, shape.neg = 0, shape.col.neg = "red", shape.lty.neg = 1, cell.fill = "white", back.fill = "white", label = 0, label.size = 0.7, label.col = "black", ref.lines = FALSE, ref.col = "grey80", scale.max = 1, shape.lwd = 1, frame.col = "black", frame.lwd = "0.5")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cell}{
Value(s) to be depicted in the table cell
}
  \item{shape}{
Shape(s) used to encode the numerical value of \code{cell}.
Any of \code{0="circle", 1="diamond", 2="square", 3="cross"}
}
  \item{shape.col}{
Outline color(s) for the shape(s)
}
  \item{shape.lty}{
Outline color(s) for the shape(s)

}
  \item{shape.neg}{
Shape(s) used to encode negative values in \code{cell}.
Any of \code{0="circle", 1="diamond", 2="square", 3="cross"}

}
  \item{shape.col.neg}{
%%     ~~Describe \code{shape.col.neg} here~~
}
  \item{shape.lty.neg}{
%%     ~~Describe \code{shape.lty.neg} here~~
}
  \item{cell.fill}{
inside color of |smallest| shape in a cell
}
  \item{back.fill}{
background color of cell
}
  \item{label}{
how many cell values will be printed; max is 4
}
  \item{label.size}{
size of cell label(s)
}
  \item{label.col}{
color of cell label(s)
}
  \item{ref.lines}{
whether to draw ref lines or not
}
  \item{ref.col}{
color of reference lines
}
  \item{scale.max}{
%%     ~~Describe \code{scale.max} here~~
}
  \item{shape.lwd}{
Width of line used to draw the shape(s)
}
  \item{frame.col}{
color of frame around cell
}
  \item{frame.lwd}{
line width of frame around cell
}
}
%\details{
%%%  ~~ If necessary, more details than the description above ~~
%}
\value{
No value is returned
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
\code{\link{tableplot}}
}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{aplot}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
