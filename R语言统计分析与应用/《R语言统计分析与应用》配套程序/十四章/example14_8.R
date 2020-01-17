>  example14_8  <- read.table ("example14_8.csv", header=TRUE, sep=",")
>  attach(example14_8)
>  wilcox.test(x ~ group, conf.level=0.95)
>  detach(example14_8)
