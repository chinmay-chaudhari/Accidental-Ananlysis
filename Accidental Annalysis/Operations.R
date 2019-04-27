modes=data.frame(c("View DataSet","View Bar Plots","View Pie Charts","View Map Plots","Exit"))
operation=select.list(apply(modes,
                           1,
                           paste,
                           collapse="  "),
                     graphics=TRUE,
                     multiple=FALSE,
                     title = "Select Operation")

switch(operation,
       "View DataSet" = source(file = "ViewDataSet.R"),
       "View Bar Plots" = source(file = "BarPlot.R"),
       "View Pie Charts" = source(file = "PieCharts.R"),
       "View Map Plots" = source(file = "MapPlot.R"),
       "Exit"=stop("Show an Error But not an Error (Using Stop() Function)"))
rm(list=setdiff(ls(),c("Accidents","labels")))
source(file = "Operations.R")