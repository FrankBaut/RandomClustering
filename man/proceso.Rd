\name{proceso}
\alias{proceso}
\title{
Process followed to remove and paste random cells on a matrix.
}
\usage{
proceso(matrix)
}
\arguments{
\item{matrix}{a matrix object of class \code{Matrix}.}
}
\value{
Returns the input \code{.matrix} object with a cell replaced randomly.
}
\description{
Iterate remove an paste random cells
}
\examples{
n<-10
p<-0.5
data<- clusters_matrix(n,p)
proceso(data)
}
