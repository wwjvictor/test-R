> library(psych)
> example17_2  <- read.table ("example17_2.csv", header=TRUE, sep=",")
> example17_2
> fa.parallel(example17_2[-1], n.obs=140, fa="fa", n.iter=100, main="Screen plots with parallel analysis")
>  fa  <- fa(example17_2[-1], nfactors=4, rotate="none", fm="pa", score=TRUE)
> fa
> fa$weights
> factor.plot(fa, labels=rownames(fa$loadings))
> fa.diagram(fa, simple=FALSE)
>  fa2  <- fa(example17_2[-1], nfactors=4, rotate="varimax", fm="pa", score=TRUE)
> fa2
> fa2$weights
> factor.plot(fa2, labels=rownames(fa$loadings))
> fa.diagram(fa2, simple=FALSE)
