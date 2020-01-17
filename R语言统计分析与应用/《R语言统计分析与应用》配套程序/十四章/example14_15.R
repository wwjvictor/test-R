>  example14_15  <- read.table ("example14_15.csv", header=TRUE, sep=",")
>  attach(example14_15)
>  wilcox.test(x ~ g)
>  detach(example14_15)
