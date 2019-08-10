#' small_cl
#'
#' @param data
#'
#' @return
#' @export
#'
#' @examples
small_cl<-function(data){
  clust_casos<- data %>% as.vector()%>% na.omit() %>%plyr::count() # %>% count()
  casos_min<- which(clust_casos$freq==min(clust_casos$freq))
  if(n_distinct(clust_casos$freq)==1){
    data<-data
  }else{
    if(length(casos_min)==1){
      coordenadas<-data.frame(which(data==casos_min,arr.ind = T))
    }else{
      caso_min<-casos_min %>% sample(1)
      coordenadas<-data.frame(which(data==caso_min,arr.ind = T))
    }
    ind<-1:dim(coordenadas)[1] %>% sample(1)
    coordenadas<-coordenadas[ind,]
    i<-coordenadas$row
    j<-coordenadas$col
    left<-as.vector(cbind(i,j-1))
    right<-as.vector(cbind(i,j+1))
    bot<-as.vector(cbind(i-1,j))
    top<-as.vector(cbind(i+1,j))
    fronteras<-data.frame(rbind(left,right,top,bot)) %>% select(i=X1,j=X2)
    indice<-1:4
    random_index<-indice %>%sample(1)
    random_place<-fronteras[random_index,]
    random_place<-nuevo_lugar(random_place,data)
    if(is.na(data[random_place$i,random_place$j])==T){
      data[random_place$i,random_place$j]<-data[i,j]
    }else{
      indice<-indice[indice!=random_index]
      random_index<-sample(indice,1)
      random_place<-fronteras[random_index,]
      random_place<-nuevo_lugar(random_place,data)
      if(is.na(data[random_place$i,random_place$j])==T){
        data[random_place$i,random_place$j]<-data[i,j]
      }else{
        indice<-indice[indice!=random_index]
        random_index<-sample(indice,1)
        random_place<-fronteras[random_index,]
        random_place<-nuevo_lugar(random_place,data)
        if(is.na(data[random_place$i,random_place$j])==T){
          data[random_place$i,random_place$j]<-data[i,j]
        }else{
          indice<-indice[indice!=random_index]
          random_index<-sample(indice,1)
          random_place<-fronteras[random_index,]
          random_place<-nuevo_lugar(random_place,data)
          if(is.na(data[random_place$i,random_place$j])==T){
            data[random_place$i,random_place$j]<-data[i,j]
          }
        }
      }
    }
  }
  return(data)
}

