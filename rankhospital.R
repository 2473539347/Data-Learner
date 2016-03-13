rankhostipal<-function(state,outcome,num="best")
{
    a<-read.csv("outcome-of-care-measures.csv",colClasses = "character")
    ##b<-colnames(a)
    ##data<-a()
    ##library(Hmisc)
    t<-simpleCap(outcome)
    nameof<-paste("Hospital.30.Day.Death..Mortality..Rates.from.",t,sep="")
    
    qq<-subset(a,State==state)
    qq[with(qq,order(nameof))]
    if(!is.null(qq)&&!is.null(qq[[nameof]]))
        ##  data<-qq[,state]
        ## if(!is.null(data[nameof]))
        dt<-qq[[nameof]]
    dd<-as.numeric(dt)
    if(num=="best")
    {
        nn<-qq[which.min(dd),]
    }
    if(num=="worst"){
        nn<-qq[which.max(dd),]
    }
    else{ nn<-qq[num,] }
    nn$Hospital.Name
    
}

