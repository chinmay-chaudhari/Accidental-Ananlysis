setwd("E:/Post Graduation/Trimester 2/R/Project")
library("rjson")
library("stringr")
file="data.json"
data=fromJSON(file=file)
TestAccidents<-data.frame(row.names=c(1:length(data[["data"]])))

