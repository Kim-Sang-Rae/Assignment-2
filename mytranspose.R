mytranspose <- function(x) {
  m <- x
  if(mode(x)=="NULL")  {
  return(x)
  }
  
  
  if (is.matrix(x) == FALSE) {
    
  x <-as.matrix(x)
  }
  y <- matrix(NA, nrow=ncol(x), ncol = nrow(x))
  a <- 1
  if (nrow(x) ==0 & ncol(x) ==0){
    a <- 0
  }
  if (class(m) == "data.frame") {
    for(i in a:nrow(x)) {
      for(j in a:ncol(x)) {
        y[j,i] <- x[i,j]
        colnames(y)<-row.names(m)
        row.names(y)<-colnames(m)
      }  
    }
  }
  else {
  for(i in a:nrow(x)) {
    for(j in a:ncol(x)) {
      y[j,i] <- x[i,j]
    }
    
  }
  }
  
   if (is.data.frame(m)) {
    class(y) <- "dataframe"
    
  }
  if (is.vector(m)) {
    class(y) <- "vector"
  }
  return(y)
  }

  
  
