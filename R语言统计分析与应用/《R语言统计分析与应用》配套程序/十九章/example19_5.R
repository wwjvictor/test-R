> example19_5  <- read.table ("example19_5.csv", header=TRUE, sep=",")
> example19_5
> attach(example19_5)
> library(MASS)
> flower <- lda(species ~ sepallen + sepalwid + petallen + petalwid,  data=example19_5,prior=c(1,1,1)/3)
> flower
> plot(flower)
> flower.values <- predict(flower)
> flower.values
> ldahist(data = flower.values$x[,1], g= species)
> plot(flower.values$x[,1], flower.values$x[,2])
text(flower.values$x[,1], flower.values$x[,2], species,cex=0.7,pos=4,col="red")
> table(species, flower.values$class)
