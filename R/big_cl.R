#' big_cl
#'
#' @param data
#'
#' @return
#' @export
#'
#' @examples
big_cl<-function(data){
  clust_casos<- data %>% as.vector()%>% na.omit() %>% plyr::count()
  casos_max<- which(clust_casos$freq==max(clust_casos$freq))
  if(n_distinct(clust_casos$freq)==1){
    data<-data
  }else{
    if(length(casos_max)==1){
      coordenadas<-data.frame(which(data==casos_max,arr.ind = T))
      indice<-1:dim(coordenadas)[1] %>% sample(1)
      muestra<-as.vector(coordenadas[indice,])
      data[muestra$row,muestra$col]<-NA
    }else{
      caso_max<-sample(casos_max,1)
      coordenadas<-data.frame(which(data==caso_max,arr.ind = T))
      indice<-1:dim(coordenadas)[1] %>%sample(1)
      muestra<-data.frame(coordenadas[indice,])
      data[muestra$row,muestra$col]<-NA
    }
  }
  return(data)
}
