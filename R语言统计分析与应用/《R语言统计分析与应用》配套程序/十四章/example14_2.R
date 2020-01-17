>  example14_2  <- read.table ("example14_2.csv", header=TRUE, sep=",")
>  attach(example14_2)
>  wilcox.test(wt, mu=2.15, conf.level=0.95)
>  detach(example14_2)
