\name{label}
\alias{label}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
label(mat, nbmask = matrix(c(0, 1, 0, 1, 0, 1, 0, 1, 0), ncol = 3), wrap = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{
%%     ~~Describe \code{mat} here~~
}
  \item{nbmask}{
%%     ~~Describe \code{nbmask} here~~
}
  \item{wrap}{
%%     ~~Describe \code{wrap} here~~
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
function (mat, nbmask = matrix(c(0, 1, 0, 1, 0, 1, 0, 1, 0), 
    ncol = 3), wrap = FALSE) 
{
    if (!is.logical(mat)) {
        stop("Labelling of patches requirese a logical matrix", 
            "(TRUE/FALSE values): please convert your data first.")
    }
    if (!is.matrix(mat)) {
        stop("The input object must be a matrix")
    }
    if (all(mat)) {
        result <- matrix(1, nrow = nrow(mat), ncol = ncol(mat))
        attr(result, "psd") <- prod(dim(mat))
        attr(result, "percolation") <- TRUE
        return(result)
    }
    if (!any(mat)) {
        result <- matrix(NA, nrow = nrow(mat), ncol = ncol(mat))
        attr(result, "psd") <- integer(0)
        attr(result, "percolation") <- FALSE
        return(result)
    }
    if (ncol(mat) == 1 || nrow(mat) == 1) {
        vec <- as.vector(mat)
        result <- cumsum(c(vec[1] > 0, diff(vec)) == 1) * vec
        result <- ifelse(result > 0, result, NA)
        if (wrap && !is.na(head(result, 1)) && !is.na(tail(result, 
            1))) {
            result[result == tail(result, 1)] <- head(result, 
                1)
        }
        attr(result, "psd") <- tabulate(result)
        dim(result) <- dim(mat)
        attr(result, "percolation") <- any(mat)
        return(result)
    }
    label_cpp(mat, nbmask, wrap)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
