>  example14_12  <- read.table ("example14_12.csv", header=TRUE, sep=",")
>  attach(example14_12)
>  kruskal.test(x~ group)
>  library(nparcomp)
>  nparcomp(x ~ group, data=example14_12, alternative = "two.sided")
>  detach(example14_12)
