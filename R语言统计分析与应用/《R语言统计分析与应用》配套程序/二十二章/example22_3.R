> example22_3  <- read.table ("example22_3.csv", header=TRUE, sep=",")
> example22_3
> summary(example22_3)
> attach(example22_3)
> plot(x, y)
> abline(lm(y~x), col="red", lwd=2, lty=1)
> lines (lowess(x,y), col="blue",  lwd=2, lty=1)
