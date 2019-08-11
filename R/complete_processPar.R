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
complete_processPar<-function(n,prob_vec,iterations){
  clustering<-foreach(i=prob_vec) %do%{
    data<-clusters_matrix(n,i)
    data<- processPar(iterations,data)
    data
  }
  return(clustering)
}
