state=select.list(apply(as.data.frame(Accidents[1]),
                  1,
                  paste,collapse="  "),
                  graphics=TRUE,
                  multiple=FALSE,
                  title = "Select State for displaying Bar Plot")

state=str_trim(gsub("\\*\\*","",state))#special for delhi
state=grep(state,Accidents$`States/UTs`)
row=Accidents[state,]
values=as.matrix.data.frame(row[,-1])
values=as.numeric(values)
cl=colors(FALSE)
barplot(values,
        ylab = "Causes",
        xlab = "Number",
        col = cl,
        main = paste("Causes of Accidents in",Accidents$`States/UTs`[state]),
        las=2,
        cex.axis = .8,
        xpd = FALSE,
        horiz = TRUE)

text(max(values)/2,seq(.8,25,1.2),
     srt = 0, adj= .75, xpd = TRUE,
     labels = labels[-1] , cex=1)
zm()
rm(list=setdiff(ls(),c("Accidents","labels")))