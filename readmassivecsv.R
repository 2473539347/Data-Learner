read.massive.csv<-function(file,id=1:332)
{
   ## read.table(file = file, header = header, sep = sep, quote = quote, 
   ##            dec = dec, fill = fill, comment.char = comment.char, ...)
    
    a<-list.files(file)

    dir<-paste(file,a,sep="")
    n<-length(id)
    merge.data<-read.csv(file=dir[id[1]],header=TRUE,sep=',')
    if(n>1)
    {
        
        for(i in 2:n)
        {
            new.data<-read.csv(file=dir[id[i]],header = TRUE,sep=",")
            merge.data<-rbind(merge.data,new.data)
        }
    }
    
    merge.data
    
}