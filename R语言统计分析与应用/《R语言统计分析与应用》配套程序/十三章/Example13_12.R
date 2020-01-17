>  Example13_12  <- read.table ("example13_12.csv", header=TRUE, sep=",")
>  attach(Example13_12)
>  mytable  <-  xtabs(~drug + case + hos)
>  mytable
>  prop.table(mytable£¬3)
>  addmargins(mytable)
>  mantelhaen.test(mytable)
>  detach (Example13_12)
