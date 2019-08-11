\name{big_cl}
\alias{big_cl}
\title{
Remove a random cell in the bisggest cluster
}
\usage{
big_cl(.matrix)
}
\arguments{
\item{.matrix}{a matrix object of class \code{Matrix}.}
}
\value{
Returns the input \code{.matrix} object with a new name \code{matrix}. It contains: \code{matrix}, a \code{matrix}.
}
\description{
Is useful when we wanr to remove a random cell in clusters on a matrix
}
\examples{
n<-10
p<-0.5
data<- clusters_matrix(n,p)
big_cl(data)
}

