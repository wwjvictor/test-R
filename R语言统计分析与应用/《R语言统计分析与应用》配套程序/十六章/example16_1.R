> install.packages("psych")
> library(psych)
> example16_1  <- read.table ("example16_1.csv", header=TRUE, sep=",")
> example16_1
> describe(example16_1)
> pc <-  principal(example16_1, nfactors=4, rotate= "varimax", score=TRUE)
> pc
> pc$weights
> pc$scores
> fa.parallel(example16_1, fa="pc", n.iter=100, show.legend=FALSE, main="Screen plot with parallel analysis")
> pc2 <-  principal(example16_1, nfactors=3, rotate= "varimax", score=TRUE)
> pc2
> pc2$weights
> pc2$scores
