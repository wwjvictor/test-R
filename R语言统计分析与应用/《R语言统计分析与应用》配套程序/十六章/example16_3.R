> library(psych)
> example16_3  <- read.table ("example16_3.csv", header=TRUE, sep=",")
> example16_3
> describe(example16_3)
> fa.parallel(example16_3[-1], fa="pc", n.iter=100, show.legend=FALSE, main="Screen plot with parallel analysis")
> pc <-  principal(example16_3[-1], nfactors=2, rotate= "varimax", score=TRUE)
> pc
> pc$weights
> pc$scores
