\name{new_place}
\alias{new_place}
\title{
Choose a new place when conds are bigger than matrix dimentions.}
\usage{
new_place(.coordinates,.data)
}
\arguments{
\item{coordinates}{an integer object of class \code{integer}.}
  \item{data}{matrix}
}
\value{
chhoose.
}
\description{
Is useful when we want choose a new cell using boundary conditions on a matrix
}
\examples{
n<-10
p<-0.5
data<- clusters_matrix(n,p)
data
}