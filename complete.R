complete<-function(directory,id=1:332){
    file<-paste(directory,"/",sep = "")
    b<-read.massive.csv(file,id)
    good<-complete.cases(b)
    bnoNA<-b[good,]
    n=length(id)
    nods<-numeric(length = n)
    
    nods[1]<-sum(bnoNA$ID==id[1])
    
   if(n>1){
      
        for(i in 2:n){
           nods[i]<- sum((bnoNA$ID)==id[i])
        }
   }
    data.frame(id,nods)
}