> install.packages("car")
> library(car)
> example16_2  <- read.table ("example16_2.csv", header=TRUE, sep=",")
> example16_2
> fit  <- lm(y~x1+x2+x3, data=example16_2)
> summary(fit)
> vif(fit)
> library(psych)
> describe(example16_2)
> fa.parallel(example16_2[-4], fa="pc", n.iter=100, show.legend=FALSE, main="Screen plot with parallel analysis")
> pc <-  principal(example16_2[-4], nfactors=2, rotate= "varimax", score=TRUE)
> pc
> pc$weights
> pc$scores
> newdata <- data.frame(example16_2,  pc$scores)
> newdata
> fit  <- lm(y~ PC1+PC2, data=newdata)
> summary(fit)
