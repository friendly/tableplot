\encoding{latin1}
\name{tableplot-package}
\Rdversion{1.1}
\alias{tableplot-package}
%\alias{tableplot}
\docType{package}
\title{
Tableplot: Semi-graphic displays of tables and arrays

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
\details{
\tabular{ll}{
Package: \tab tableplot\cr
Type: \tab Package\cr
Version: \tab 0.3-3\cr
Date: \tab 2010-01-25\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}
The main function is \code{\link{tableplot}}. \code{\link{tableplot.colldiag}} is
provided for collinearity diagnostics (Friendly & Kwan, 2009).
In future releases, tableplot methods will be provided
for other specialized tables.
}
\author{
Ernest Kwan and Michael Friendly

Maintainer: Michael Friendly <friendly@yorku.ca>

}
\references{
Kwan, E. (2008).
Improving Factor Analysis in Psychology: Innovations Based on the Null Hypothesis Significance 
Testing Controversy. Ph. D. thesis,  York University.

Friendly, M. & Kwan, E. (2009).
Where's Waldo: Visualizing Collinearity Diagnostics
\emph{The American Statistician}, 63(1), 56-65.


Kwan, E. and Lu, I. R. R. and Friendly, M. (2009). 
Tableplot: A new tool for assessing precise predictions 
\emph{Zeitschrift für Psychologie / Journal of Psychology}, 217, 38-48.

}
\keyword{ package }
\seealso{
\code{\link{tableplot}}, \code{\link{tableplot.colldiag}}

\code{\link[corrgram]{corrgram}} for corrgrams of correlation matrices

\code{\link[gplots]{balloonplot}} for balloonplots of two-way tables
}
\examples{
# See: demo(psych9)
}
