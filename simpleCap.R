##setFirsttobig<-function(x){
  ##  n<-length(x)
    ##x<-toupper(x[1])
    ##for(i in 1:n){
    
simpleCap <- function(x) {
    s <- strsplit(x, " ")[[1]]
    paste(toupper(substring(s, 1, 1)), substring(s, 2),sep = "", 
          collapse = ".")
}