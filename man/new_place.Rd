\name{new_place}
\alias{new_place}
\title{
Choose a new place when conditions are bigger than matrix dimentions.}
\usage{
new_place(coordinates,data)
}
\arguments{
\item{coordinates}{an integer object of class \code{integer}.}
  \item{data}{matrix}
}
\value{
chhoose.
}
\description{
Select a random cell in a matrix, when one choosed neigbors cell is out matrix dimetions,
  new_place applay periodic conditions.
}
\examples{
n<-10
p<-0.5
data<- clusters_matrix(n,p)
data
}
