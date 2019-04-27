category=select.list(apply(data.frame(labels[-1]),
                     1,
                     paste,
                     collapse="  "),
                     graphics=TRUE,
                     multiple=FALSE,
                     title = "Select Category for displaying Pie Chart")

row=Accidents[category]
values=as.matrix.data.frame(row)
values=as.numeric(values)

states=Accidents[1]
states=as.matrix.data.frame(states)
states=as.character(states)


cl=colors(TRUE)
pie(values,main = paste(category),col=cl[c(1:35)],labels="")
legend("topleft", states[c(1:18)], cex = 0.7,
       fill = cl[c(1:18)],bty="n",y.intersp = .7)
legend(.9,1, states[c(19:35)], cex = 0.7,
       fill = cl[c(19:35)],bty="n",y.intersp = .7)
zm()
rm(list=setdiff(ls(),c("Accidents","labels")))