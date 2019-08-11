\name{clusters_matrix}
\name{clusters_matrix}
\alias{clusters_matrix}
\title{
Generate a random binary matrix and label formed clusters.
}
\usage{
clusters_matrix(.integer,.fracc)
}
\arguments{
\item{n}{an integer object of class \code{integer}.}
  \item{p}{a float object}
}
\value{
Returns the input \code{.matrix} object with a new name \code{matrix}. It contains: \code{matrix}, a \code{matrix}.
}
\description{
Is useful when we want generate random clsters on a matrix
}
\examples{
n<-10
p<-0.5
data<- clusters_matrix(n,p)
data
}

