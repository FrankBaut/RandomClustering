\name{small_cl}
\alias{small_cl}
\title{
Paste a random cell in the smallest cluster in one of his neighbors.
}
\usage{
small_cl(.matrix)
}
\arguments{
\item{.matrix}{a matrix object of class \code{matrix}.}
}
\value{
Returns the input \code{.matrix} object with a new name \code{matrix}. It contains: \code{matrix}, a \code{matrix}.
}
\description{
Is useful when we want to paste a random cell in clusters on a matrix
}
\examples{
n<-10
p<-0.5
data<- clusters_matrix(n,p)
small_cl(data)
}

