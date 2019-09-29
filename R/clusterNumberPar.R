#'clusterNumberPar
#'
#' @param iteratios
#'
#' @param data
#'
#' @return
#' @export
#'
#' @examples
clusterNumberPar<-function(iterations,data){
  cluster<-foreach(i=seq_len(iterations)) %dopar% {
    data<-proceso(data)
    caso<-data %>% as.vector()%>% na.omit() %>% plyr::count()
    length(caso$freq)

  }
  return(mean(unlist(cluster)))
}
