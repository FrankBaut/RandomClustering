\name{big_cl}
\alias{big_cl}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
big_cl(data)
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
    casos_max <- which(clust_casos$freq == max(clust_casos$freq))
    if (n_distinct(clust_casos$freq) == 1) {
        data <- data
    }
    else {
        if (length(casos_max) == 1) {
            coordenadas <- data.frame(which(data == casos_max, 
                arr.ind = T))
            indice <- 1:dim(coordenadas)[1] \%>\% sample(1)
            muestra <- as.vector(coordenadas[indice, ])
            data[muestra$row, muestra$col] <- NA
        }
        else {
            caso_max <- sample(casos_max, 1)
            coordenadas <- data.frame(which(data == caso_max, 
                arr.ind = T))
            indice <- 1:dim(coordenadas)[1] \%>\% sample(1)
            muestra <- data.frame(coordenadas[indice, ])
            data[muestra$row, muestra$col] <- NA
        }
    }
    return(data)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
