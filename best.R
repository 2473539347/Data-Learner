best<-function(state,outcome)
{
    a<-read.csv("outcome-of-care-measures.csv",colClasses = "character")
    ##b<-colnames(a)
    ##data<-a()
    ##library(Hmisc)
    t<-simpleCap(outcome)
    nameof<-paste("Hospital.30.Day.Death..Mortality..Rates.from.",t,sep="")
   
    qq<-subset(a,State==state)
    
    if(!is.null(qq)&&!is.null(qq[[nameof]]))
      ##  data<-qq[,state]
   ## if(!is.null(data[nameof]))
        dt<-qq[[nameof]]
    dd<-as.numeric(dt)
    p<-order(dd,na.last = TRUE)[1]
    result<-qq[["Hospital.Name"]]
    rr<-result[p]
    rr
}

