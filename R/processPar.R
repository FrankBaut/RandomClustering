#' processPar
#'
#' @param iteratios
#'
#' @param data
#'
#' @return
#' @export
#'
#' @examples
processPar<-function(iterations,data){
  cluster<-foreach(i=seq_len(iterations)) %dopar% {
    data<-proceso(data)
    caso<-data %>% as.vector()%>% na.omit() %>% plyr::count()
    gc()
    max(caso$freq,na.rm = T)/sum(caso$freq,na.rm = T)
   #length(caso$freq)

  }
  return(mean(unlist(cluster)))
}
