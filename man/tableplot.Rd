\encoding{latin1}
\name{tableplot}
\Rdversion{1.1}
\alias{tableplot}
\alias{tableplot.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Tableplot
}
\description{
A tableplot (Kwan, 2008) is
designed as a semi-graphic display in the form of a table with numeric values, but supplemented
by symbols with size proportional to cell value(s), and with other visual attributes
(shape, color fill, background fill, etc.) that can be used to encode other information
essential to direct visual understanding.  Three-way arrays, where the last dimension
corresponds to levels of a factor for which the first two dimensions are to be compared
are handled by superimposing symbols.
}
\usage{
tableplot(values, ...)

\method{tableplot}{default}(values, assign.sets, cell.specs, 
	v.parts = 0, h.parts = 0, gap = 2, text.m = 0, empty.text.size = 0.8, empty.text.col = "grey30", 
	title = NULL, table.label = TRUE, label.size = 0.8, side.rot = 0, left.space = 10, top.space = 10+10*(!is.null(title)), ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{values}{A matrix or 3-dimensional array of values to be displayed in a tableplot}
  \item{\dots}{Arguments passed down to \code{tableplot.default}}

  \item{assign.sets}{
Matrix of specification assignments, of the same size as the first two dimensions
of \code{values}. Entries refer to the sub-lists of \code{cell.specs}.
Defaults to \code{matrix(1, dim(values)[1], dim(values)[2]))}.
}
  \item{cell.specs}{
List of lists; each list is one specification for the arguments to \code{\link{cellgram}}.
\code{cell.specs[[k]]} is used for all table cells where
\code{assign.sets[i,j] = k}. See \code{\link{make.specs}} for a simple way to
construct the \code{cell.specs} argument.
}
  \item{v.parts}{
An integer vector giving the number of columns in two or more partititions of
the table. If provided, sum must equal number of columns.
}
  \item{h.parts}{
An integer vector giving the number of rows in two or more partititions of
the table. If provided, sum must equal number of columns.
}
  \item{gap}{
Width of the gap in each partition, if partitions are requested by \code{v.parts}
and/or \code{h.parts}
}
  \item{text.m}{
Matrix of text for insertion into text-only, empty cell(s)
}
  \item{empty.text.size}{
Text size for text-only cells
}
  \item{empty.text.col}{
Text color for text-only cells
}
  \item{title}{
Main title
}
  \item{table.label}{
Logical value: whether to print row/column labels.
}
  \item{label.size}{
Character size for labels
}
  \item{side.rot}{
Degree of rotation (positive for counter-clockwise)}
  \item{left.space}{
Space between left of tableplot and left edge of drawing region, in mm.}
  \item{top.space}{
Space between top of tableplot and top edge of drawing region, in mm.}

}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
None. Used for its side effect
}
\references{
Kwan, E. (2008).
Improving Factor Analysis in Psychology: Innovations Based on the Null Hypothesis Significance 
Testing Controversy. Ph. D. thesis,  York University.

Kwan, E. and Lu, I. R. R. and Friendly, M. (2009). 
Tableplot: A new tool for assessing precise predictions 
\emph{Zeitschrift für Psychologie / Journal of Psychology}, 217, 38-48.
}
\author{
Ernest Kwan
}
%\note{
%%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{cellgram}}, \code{\link{make.specs}}
}
\examples{
# Factor pattern matrix from Nisenbaum etal. (2004)
Nisenbaum <- matrix(c(
 93,  14, -14,  -3,
 87,  17, -13, -12,
 39, -15,  15,  29,
 25,  10,  21,  41,
 36, -10,   8,  35,
  5,  79,  -1,   0,
 10,  72, -11,  16,
  8,  80,  12,  -7,
 23,  47,   6,   8,
-28,  27,   5,  78,
  6,  33, -22,  37,
-10,  21, -10,  68,
-19,  -1,  93,  11,
-11,  -8,  86,   3,
  2,  -1,  53,   3,
 10,  27,  51, -11,
 21,  28,  50, -12,
 18,  10,  11,  23,
  0,  25,  15,  20,
 15, -24,   8,  54,
-13,  31,  14,  20), 21, 4, byrow=TRUE)
colnames(Nisenbaum) = paste("F", 1:4, sep="")

tableplot(
	values = Nisenbaum,
	cell.specs = list(list(0,"grey50",1,0,"red",1,"white","grey80",1,0.7,"black",FALSE,"black",93)),
	assign.sets = matrix(1,21,4)
	)	


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ hplot }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
