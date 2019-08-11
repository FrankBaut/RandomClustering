complete_processPar<-function(n,prob_vec,iterations){
  clustering<-foreach(i=prob_vec) %do%{
    data<-clusters_matrix(n,i)
    data<- processPar(iteraciones,data)
    data
  }
  return(clustering)
}
