> example19_3  <- read.table ("example19_3.csv", header=TRUE, sep=",")
> example19_3
> attach(example19_3)
> library(MASS)
> corary <- lda(Type~x1+x2+x3+x4+x5, data=example19_3,prior=c(1,1,1)/3)
> corary
> plot(corary)
> corary.values <- predict(corary)
> corary.values
> ldahist(data = corary.values$x[,1], g=Type)
> plot(corary.values$x[,1], corary.values$x[,2])
text(corary.values$x[,1], corary.values$x[,2],Type,cex=0.7,pos=4,col="red")
> table(Type, corary.values$class)
