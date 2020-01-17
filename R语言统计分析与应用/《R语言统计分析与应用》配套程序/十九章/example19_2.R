> example19_2  <- read.table ("example19_1.csv", header=TRUE, sep=",")
> example19_2
> attach(example19_2)
> install.packages("MASS")
> library(MASS)
> corary.lda2 <- qda(Type~x1+x2, data=example19_2,prior=c(1,1)/2)
> corary.lda2
> corary.lda.values <- predict(corary.lda2)
> corary.lda.values
> table(Type,corary.lda.values$class)
