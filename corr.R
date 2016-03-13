corr<-function(directory,threshold=0){
    comp<-complete(directory)
    d<-numeric(332)
    for(i in 1:332){
        if(comp$nods[i]>threshold)
            d[i]<-comp$id[i]
    }
    dd<-formatC(d,flag = '0',width = 3)
    k<-0
    for(i in 1:332)
    {    
        if(dd[i]!="000")
        {
            k<-k+1
        }
    }
    result<-numeric(k)
    t<-0
    for(i in 1:332)
    {
        if(dd[i]!="000")
        {
            a<-read.csv(paste(directory,"/",dd[i],".csv",sep = ""))
           ## b<-read.massive.csv(file,id)
            good<-complete.cases(a)
            anoNA<-a[good,]
            t<-t+1
            result[t]<-cor(anoNA$nitrate,anoNA$sulfate)
            
        }
    }
    result
}