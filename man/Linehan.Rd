\name{Linehan}
\Rdversion{1.1}
\alias{Linehan}
\docType{data}
\title{
Factor patterns for two samples from Linehan et al. (2006)
}
\description{
Factor patterns for two samples from Linehan et al. (2006).
There are 13 items, 4 factors and two samples, giving a 13 x 4 x 2 array.
}
\usage{data(Linehan)}
\format{
  The format is:
\preformatted{
 num [1:13, 1:4, 1:2] 0.864 0.851 0.829 0.803 0.318 -0.218 -0.191 0.146 0.108 -0.154 ...
 - attr(*, "dimnames")=List of 3
  ..$ : NULL
  ..$ : chr [1:4] "SI" "RL" "SC" "L"
  ..$ : NULL
}
}
%\details{
%%  ~~ If necessary, more details than the __description__ above ~~
%}
\source{
Linehan, M. M. and Comtois, K. A. and Brown, M. Z. and Heard, H. L. and Wagner, A. (2006).
Suicide Attempt Self-Injury Interview (SASII): development, reliability, and 
validity of s scale to assess suicide attempts and intentional self-injury.
\emph{Psychological Assessment}, 18(3), 303-312.
}
%\references{
%%%  ~~ possibly secondary sources and usages ~~
%}
\examples{
data(Linehan)

# Linehan samples superimposed

tableplot(
	values = round(Linehan*100),
	assign.sets = matrix(1,13,4), 
	cell.specs=list(list(0,"grey50",1,1,"red",1,"white","grey90",2,.7,"black",FALSE,"black",99)),
	left.space=8, top.space=8	)
	
# Vectorized arguments
# Use color to distinguish samples

tableplot(
	values = round(Linehan*100),
	assign.sets = matrix(1,13,4), 
	cell.specs=list(list(0,c("black","blue"),1,1,c("black","blue"),1,"white","grey80",2,.7,"black",FALSE,"black",99))
	)

################################################
# augment the table with congruence coefficients
Linehan.augment <- array(NA, c(14,5,2))
Linehan.augment[1:13,1:4,1:2] <- Linehan

# For rows:
	for (i in 1:13){
	Linehan.augment[i,5,1] <- congruence.coef(Linehan[i,,1],Linehan[i,,2])
	}
# For columns:
	for (j in 1:4){
	Linehan.augment[14,j,1] <- congruence.coef(Linehan[,j,1],Linehan[,j,2])
	}
# For overall:		
	Linehan.augment[14,5,1] <- congruence.coef(as.vector(Linehan[,,1]),as.vector(Linehan[,,2]))
	
dimnames(Linehan.augment) <- list(c(1:13,"phi"),c("SI","RL","SC","L","phi"),NULL)

# Difference cell specs for last row & col
	M <- matrix(1,14,5)
	M[14,] <- 2
	M[,5] <- 2

# Linehan superimposed, augmented by congruence coefficients
tableplot(
	values = round(Linehan.augment*100), 
	assign.sets = M,
	cell.specs=list(
		list(0,"grey50",1,1,"red",1,"white","grey95",2,.75,"black",FALSE,"black",99),
		list(0,"grey30",1,1,"red",1,"white","yellow",1,.75,"black",FALSE,"black",100)),
	h.parts = c(13,1), v.parts = c(4,1), gap = 1,
	left.space=10, top.space=10)

}
\keyword{datasets}
