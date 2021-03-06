>  Example8_11  <- read.table ("example8_11.csv", header=TRUE, sep=",")
>  attach(Example8_11)
>  a  <-factor(a, order=FALSE)
>  b  <-factor(b, order=FALSE)
>  c  <-factor(c, order=FALSE)
>  d  <-factor(d, order=FALSE)
>  fit <- aov(x ~ a + b + c + d +a:b)
>  summary(fit)
>  detach(Example8_11)
