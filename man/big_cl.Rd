\name{big_cl}
\alias{big_cl}
\title{
Remove a random cell in the bisggest cluster.
}
\usage{
big_cl(matrix)
}
\arguments{
\item{matrix}{a object of class \code{matrix}.}
}
\value{
Returns the input \code{matrix} object without one cell in the input \code{matrix}.
}
\description{
Choose the biggest labeled cluster in a matrix and remove randomly one of its cells.
}
\examples{
n<-10
p<-0.5
data<- clusters_matrix(n,p)
big_cl(data)
}

