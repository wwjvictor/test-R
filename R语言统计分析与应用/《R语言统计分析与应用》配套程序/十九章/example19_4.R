> example19_4  <- read.table ("example19_4.csv", header=TRUE, sep=",")
> example19_4
> attach(example19_4)
> library(MASS)
> infarction <- lda(g~ tc +tg +hdlc +ldlc+ apoa +apob, data=example19_4, prior=c(1,1)/2)
> infarction
> plot(infarction)
> infarction.values <- predict(infarction)
> infarction.values
>  table(g, infarction.values$class)
