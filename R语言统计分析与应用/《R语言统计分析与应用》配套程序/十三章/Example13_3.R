>  Example13_3  <- read.table ("example13_3.csv", header=TRUE, sep=",")
>  attach(Example13_3)
>  mytable  <-  xtabs(~a + b)
>  library(gmodels)
>  CrossTable(a, b)
>  chisq.test(mytable)
>  detach (Example13_3)
