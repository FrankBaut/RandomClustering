#' complete_processPar
#'
#' @param n
#'
#' @param prob_vec
#'
#' @param iterations
#'
#' @param l
#' 
#' @param pb
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

complete_processPar<-function(n,prob_vec,iterations,l,pb){
  clustering<-foreach(i=prob_vec,j = icount(length(prob_vec))) %do%{
    data<-clusters_matrix(n,i)
    setTxtProgressBar(pb, j)
    gc()
    data<- processPar(iterations,data)
    data
  }
  return(clustering)
}
