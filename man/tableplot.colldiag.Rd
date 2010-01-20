\name{tableplot.colldiag}
\Rdversion{1.1}
\alias{tableplot.colldiag}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Tableplot for Collinearity Diagnostics
}
\description{
Produces a tableplot of collinearity diagnostics for a linear regression model
(Friendly & Kwan, 2009),
showing condition indices and variance proportions for the quantitative predictors.
The goal is to highlight the variables involved in one or more nearly collinear
relations among the predictors.

The default scheme is to show the column of condition indices at the left, using
color to indicate danger (red), warning (yellow) and OK (green) with colors
designed to reproduce as ordered in B/W.
The variance proportions for the predictors are shown in a block at the right,
using white, pink, red for small, medium and large values.
}
\usage{
\method{tableplot}{colldiag}(values, cell.specs, 
	prop.col = c("white", "pink", "red"), 
	cond.col = c("#A8F48D", "#DDAB3E", "red"), 
	cond.max = 100, 
	prop.breaks = c(0, 20, 50, 100), 
	cond.breaks = c(0, 5, 10, 1000), 
	show.rows = nvar:1, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{values}{
A \code{colldiag} object, such as calculated by \code{colldiag}
}
  \item{cell.specs}{
Specifications for \code{cellgram} arguments, used only to override
those calculated internally from the following arguments.
}
  \item{prop.col}{
A vector of colors used to display the values of the variance proportions.

}
  \item{cond.col}{
A vector of colors used to display the values of the condition indices
}
  \item{cond.max}{
Maximum value for a condition index displayed.
}
  \item{prop.breaks}{
Breaks for the variance proportions.
}
  \item{cond.breaks}{
Breaks for the condition indices
}
  \item{show.rows}{
Vector of indices of the rows of the \code{colldiag} object to
be displayed in the tableplot.  By default, all rows are shown,
in reverse order, with the highest condition indices at the top.
}
  \item{\dots}{
Other arguments to pass down to \code{tableplot.default}
}
}
\details{
The values of variance proportions are multiplied by 100 and rounded.

}
\value{
None. Used for its side-effect.
}
\references{
Friendly, M. & Kwan, E. (2009).
Where's Waldo: Visualizing Collinearity Diagnostics
\emph{The American Statistician}, 63(1), 56-65.

}
\author{
Michael Friendly
}
%\note{
%%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[perturb]{colldiag}} for calculation of collinearity diagnostics
}
\examples{
# Baseball data example, from Friendly & Kwan (2009)
if (require(vcd) && require(perturb)) {
	# model, with transformed variables
	Baseball$logsal <- log(Baseball$sal87)
	Baseball$years7 <- pmin(Baseball$years,7)

	base.mod <- lm(logsal ~ years+atbat+hits+homeruns+runs+rbi+walks, data=Baseball)
	if (require(car)) {
		# examine variance inflation factors
		vif(base.mod)
	}
	# corresponds to SAS: / collinoint option
	cd <- colldiag(base.mod, add.intercept=FALSE, center=TRUE)
	# simplified display
	print(cd, fuzz=.3)

	tableplot(cd)
	}

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hplot}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
