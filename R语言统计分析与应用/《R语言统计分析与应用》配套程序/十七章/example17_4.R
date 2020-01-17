> library(psych)
> example17_4  <- read.table ("example17_4.csv", header=TRUE, sep=",")
> example17_4
> fa.parallel(example17_4, fa="fa", n.iter=100, main="Screen plots with parallel analysis")
>  fa  <- fa(example17_4, nfactors=2, rotate="none", fm="ml", score=TRUE)
>  fa
> fa$weights
> fa$scores
> factor.plot(fa, labels=rownames(fa$loadings))
> fa.diagram(fa, simple=FALSE)
>  fa2  <- fa(example17_4, nfactors=2, rotate="varimax", fm="ml", score=TRUE)
> fa2
> fa2$weights
> fa2$scores
> factor.plot(fa2, labels=rownames(fa$loadings))
> fa.diagram(fa2, simple=FALSE)
