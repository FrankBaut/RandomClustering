\name{small_cl}
\alias{small_cl}
\title{
Paste a random cell in the smallest cluster in one of his neighbors.
}
\usage{
small_cl(matrix)
}
\arguments{
\item{matrix}{a matrix object of class \code{matrix}.}
}
\value{
Returns the input \code{matrix} object with a added cel in \code{matrix}.
}
\description{
Find the smallest clusters in a matrix and of them, choose one randomly and add one cell randomly in one of his neighbors.
}
\examples{
n<-10
p<-0.5
data<- clusters_matrix(n,p)
small_cl(data)
}

