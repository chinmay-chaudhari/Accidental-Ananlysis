labels=character(0)
for(.i in seq(length(data[["fields"]]))){
  val=data[["fields"]][[.i]]$label
  labels=append(labels,val,length(labels))
}
rm(val)