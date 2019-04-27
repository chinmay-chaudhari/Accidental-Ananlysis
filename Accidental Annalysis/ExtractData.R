row=character(0)
rows=character(0)

for(.i in seq(length(data[["data"]]))){
  row=data[["data"]][[.i]]
  rows=rbind(rows,row)
}
