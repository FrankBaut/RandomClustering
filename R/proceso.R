#' proceso
#'
#' @param data
#'
#' @return
#' @export
#'
#' @examples
proceso <-function(data){
  data<-data %>% big_cl() %>% small_cl()
  data[!is.na(data)] <- 1
  data[is.na(data)] <- 0
  data<- data %>% as.logical() %>% matrix(ncol=dim(data)[1]) %>%
    RandomClustering::label(wrap = T)
  return(data)
}
