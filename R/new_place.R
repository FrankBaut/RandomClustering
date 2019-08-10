new_place<-function(random_place,data){
  dimension<-dim(data)[1]
  if(random_place$j==0){
    random_place$j<-dimension
  }else if(random_place$j==(dimension+1)){
    random_place$j<-1
  }else if(random_place$i==0){
    random_place$i<-dimension
  }else if(random_place$i==(dimension+1)){
    random_place$i<-1
  }
  return(random_place)
}
