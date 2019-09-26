#' complete_processPar
#'
#' @param n
#'
#' @param prob_vec
#'
#' @param iterations
#'
#' @return
#' @export
#'
#' @examples
#complete_processPar<-function(n,prob_vec,iterations){
#  clustering<-foreach(i=prob_vec) %do%{
#    data<-clusters_matrix(n,i)
#    data<- processPar(iterations,data)
#    data
#  }
#  return(clustering)
#}

complete_processPar<-function(n,prob_vec,iterations){
  l<-length(prob_vec)
  pb <- txtProgressBar(0,l, style = 3)
  clustering<-foreach(i=prob_vec,j = icount(length(prob_vec))) %do%{
    data<-clusters_matrix(n,i)
    setTxtProgressBar(pb, j)
    data<- processPar(iterations,data)
    data
  }
  return(clustering)
}
