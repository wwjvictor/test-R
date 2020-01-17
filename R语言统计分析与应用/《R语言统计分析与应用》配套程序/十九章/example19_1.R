> example19_1  <- read.table ("example19_1.csv", header=TRUE, sep=",")
> example19_1
> attach(example19_1)
> install.packages("MASS")
> library(MASS)
> corary.lda <- lda(Type~x1+x2, data=example19_1,prior=c(1,1)/2)
> corary.lda
> corary.lda.values <- predict(corary.lda)
> ldahist(data = corary.lda.values$x[,1], g=Type)
> table(Type,corary.lda.values$class)
