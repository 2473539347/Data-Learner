pollutantmean<-function(directory,polluant,id=1:332)
{
    file<-paste(directory,"/",sep = "")
    b<-read.massive.csv(file,id)
    
    mean(b[[polluant]],na.rm = TRUE)
}
