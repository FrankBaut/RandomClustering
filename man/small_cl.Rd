\name{small_cl}
\alias{small_cl}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
small_cl(data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
%%     ~~Describe \code{data} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (data) 
{
    clust_casos <- data \%>\% as.vector() \%>\% na.omit() \%>\% plyr::count()
    casos_min <- which(clust_casos$freq == min(clust_casos$freq))
    if (n_distinct(clust_casos$freq) == 1) {
        data <- data
    }
    else {
        if (length(casos_min) == 1) {
            coordenadas <- data.frame(which(data == casos_min, 
                arr.ind = T))
        }
        else {
            caso_min <- casos_min \%>\% sample(1)
            coordenadas <- data.frame(which(data == caso_min, 
                arr.ind = T))
        }
        ind <- 1:dim(coordenadas)[1] \%>\% sample(1)
        coordenadas <- coordenadas[ind, ]
        i <- coordenadas$row
        j <- coordenadas$col
        left <- as.vector(cbind(i, j - 1))
        right <- as.vector(cbind(i, j + 1))
        bot <- as.vector(cbind(i - 1, j))
        top <- as.vector(cbind(i + 1, j))
        fronteras <- data.frame(rbind(left, right, top, bot)) \%>\% 
            select(i = X1, j = X2)
        indice <- 1:4
        random_index <- indice \%>\% sample(1)
        random_place <- fronteras[random_index, ]
        random_place <- new_place(random_place, data)
        if (is.na(data[random_place$i, random_place$j]) == T) {
            data[random_place$i, random_place$j] <- data[i, j]
        }
        else {
            indice <- indice[indice != random_index]
            random_index <- sample(indice, 1)
            random_place <- fronteras[random_index, ]
            random_place <- nuevo_lugar(random_place, data)
            if (is.na(data[random_place$i, random_place$j]) == 
                T) {
                data[random_place$i, random_place$j] <- data[i, 
                  j]
            }
            else {
                indice <- indice[indice != random_index]
                random_index <- sample(indice, 1)
                random_place <- fronteras[random_index, ]
                random_place <- nuevo_lugar(random_place, data)
                if (is.na(data[random_place$i, random_place$j]) == 
                  T) {
                  data[random_place$i, random_place$j] <- data[i, 
                    j]
                }
                else {
                  indice <- indice[indice != random_index]
                  random_index <- sample(indice, 1)
                  random_place <- fronteras[random_index, ]
                  random_place <- nuevo_lugar(random_place, data)
                  if (is.na(data[random_place$i, random_place$j]) == 
                    T) {
                    data[random_place$i, random_place$j] <- data[i, 
                      j]
                  }
                }
            }
        }
    }
    return(data)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
