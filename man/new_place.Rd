\name{new_place}
\alias{new_place}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
new_place(random_place, data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{random_place}{
%%     ~~Describe \code{random_place} here~~
}
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
function (random_place, data) 
{
    dimension <- dim(data)[1]
    if (random_place$j == 0) {
        random_place$j <- dimension
    }
    else if (random_place$j == (dimension + 1)) {
        random_place$j <- 1
    }
    else if (random_place$i == 0) {
        random_place$i <- dimension
    }
    else if (random_place$i == (dimension + 1)) {
        random_place$i <- 1
    }
    return(random_place)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
