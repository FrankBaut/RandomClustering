\name{clusters_matrix}
\alias{clusters_matrix}
\title{
Generate a random binary matrix and label formed clusters.
}
\usage{
clusters_matrix(n,p)
}
\arguments{
\item{n}{an integer object.}
  \item{p}{a float object, take values between 0 and 1.}
}
\value{
Returns a \code{matrix} of size $n\times n$ and probability of filling $p$.  Generate clusters with different label.
}
\description{
First generate a binary matrix of size $n\times n$. p is a indicates how many 1's will be put on a matrix randomly.
This will genrate cluters coneceted. \textit{cluster_matrix} label this clusters.

}
\examples{
n<-10
p<-0.5
data<- clusters_matrix(n,p)
data
}

