>  example14_7  <- read.table ("example14_7.csv", header=TRUE, sep=",")
>  attach(example14_7)
>  wilcox.test(veci ~ group, conf.level=0.95)
>  detach(example14_7)
