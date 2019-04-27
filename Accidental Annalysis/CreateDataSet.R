Accidents<-data.frame(row.names=c(1:length(data[["data"]])))
for(.i in seq(length(data[["fields"]]))){
  val<-character(0)
  for(.j in seq(length(data[["data"]]))){
    val<-append(val,rows[.j,.i],length(val))
  }
  row=do.call("<-",list(labels[.i],val))
  Accidents<-cbind(Accidents,row)
}
names(Accidents)<-labels[c(1:length(labels))]
rm(list=setdiff(ls(),c("Accidents","labels")))