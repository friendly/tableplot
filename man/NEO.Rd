\encoding{latin1}
\name{NEO}
\Rdversion{1.1}
\alias{NEO}
\alias{NEO.n}
\alias{NEO.s}
\docType{data}
\title{
Factor solutions for the NEO PI-R
}
\description{
Factor solutions for the "Big 5" dimensions of personality
determined using the 
Revised
NEO Personality Inventory (NEO PI-R; Costa & McCrae, 1992).
The five dimensions are measured by 240 items
grouped into 30 sub-scales (``facets''), with six facets measuring each of the
five dimensions. 

\code{NEO.n} is from the normative sample of
Costa & McCrae, 1992.
\code{NEO.s} is from a cross-cultural Shona-speaking
sample from Zimbabwe
(Piedmont etal., 2002).

}
\usage{
	data(NEO.n)
	data(NEO.s)
	data(NEO)
	}
\format{
For \code{NEO.n}:

  The format is:
\preformatted{
 num [1:30, 1:5] 0.81 0.63 0.8 0.73 0.49 0.7 -0.12 -0.18 -0.32 0.04 ...
 - attr(*, "dimnames")=List of 2
  ..$ : chr [1:30] "N1" "N2" "N3" "N4" ...
  ..$ : chr [1:5] "N" "E" "O" "A" ...
}

For \code{NEO.s}:

  The format is:
\preformatted{
 num [1:30, 1:5] 0.66 0.53 0.6 0.58 0.58 0.57 -0.24 -0.14 -0.51 -0.15 ...
 - attr(*, "dimnames")=List of 2
  ..$ : chr [1:30] "N1" "N2" "N3" "N4" ...
  ..$ : chr [1:5] "N" "E" "O" "A" ...
}

The \code{NEO} data is the three-way array combining \code{NEO.n} and \code{NEO.s}:
  The format is:
\preformatted{
 num [1:30, 1:5, 1:2] 0.81 0.63 0.8 0.73 0.49 0.7 -0.12 -0.18 -0.32 0.04 ...
 - attr(*, "dimnames")=List of 3
  ..$ : chr [1:30] "N1" "N2" "N3" "N4" ...
  ..$ : chr [1:5] "N" "E" "O" "A" ...
  ..$ : chr [1:2] "Normative" "Shona" 
}

}
%\details{
%%  ~~ If necessary, more details than the __description__ above ~~
%}
\source{
Costa Jr, P. T. & McCrae, R. R. (1992).
Normal personality assessment in clinical practice: The NEO Personality Inventory 
\emph{Psychological Assessment},  4, 5-13.


Piedmont, R. L. and Bain, E. and McCrae, R.R. and Costa Jr, P. T.(2002).
"The applicability of the five-factor model in a sub-Saharan culture: 
The NEO PI-R in Shona", 
In R. R. McCrae and J. Allik (ed.)
\emph{The Five-Factor Model of Personality Across Cultures},
New York: Kluwer Academic/Plenum, 155-173.

}
\references{
Kwan, E. and Lu, I. R. R. and Friendly, M. (2009). 
Tableplot: A new tool for assessing precise predictions 
\emph{Zeitschrift für Psychologie / Journal of Psychology}, 217, 38-48.
}
\examples{
data(NEO.n); data(NEO.s)

# Examples from Kwan et al., 2009

# Plot of Normative patter, first 12 facets:
tableplot(  
	values = round( 100 * t(NEO.n[1:12,])),
	label.size = 1.5,
	cell.specs=list(
	list(0,"blue",1,1,"red",1,"white","grey90",1,1.5,"grey50",FALSE,"grey40",100)),
	v.parts = c(6,6), 
	gap = 3,
	left.space=15, 
	top.space=15,
	assign.sets = matrix(1,5,12))


facnames <- c("N","E","O","A","C")
itmnames <- as.vector(t(outer(facnames, 1:6, paste, sep="")))

# Put the patterns together:
  neopir <- array(NA, c(6,31,2))
  neopir[1:5,1:30,1] <- t(NEO.n) # Normative
  neopir[1:5,1:30,2] <- t(NEO.s) # Shona

# Calculate congruence coefficients for variables:
  for (j in 1:30){
	neopir[6,j,] <- round(congruence.coef(neopir[1:5,j,1],neopir[1:5,j,2]),2)	}

# Calculate congruence coefficients for factors:
  for (i in 1:5){
	neopir[i,31,] <- round(congruence.coef(neopir[i,1:30,1],neopir[i,1:30,2]),2)	}
	
# Plug in the total congruence coefficient:
  neopir[6,31,] <- 0.89

# Get rid of decimals:
  neopir <- round(neopir * 100)
 
 dimnames(neopir) <- list( c(facnames, "phi"), c(itmnames, "phi"), c("Normative", "Shona"))

# Plot of Normative and Shona, superimposed and augmented:
	B       <- matrix(1,6,31)
	B[6,]   <- 2
	B[,31]  <- 2

tableplot(
	values = neopir,
	label.size = 0.8,
	cell.specs=list(
	list(0,"blue",1,1,"red",1,"white","grey95",2,0.6,"grey50",FALSE,"grey40",100),
	list(0,"blue",1,1,"red",1,"yellow","grey60",1,0.6,"grey10",FALSE,"grey40",100)),
	v.parts = c(6,6,6,6,6,1), 
	h.parts = c(5,1), 
	gap = 1,
	left.space=8,
	assign.sets = B)

}
\keyword{datasets}
