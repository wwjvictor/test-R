>  Example13_13  <- read.table ("example13_13.csv", header=TRUE, sep=",")
>  attach(Example13_13)
>  library(gmodels)
>  CrossTable(a, b)
>  mytable  <-  xtabs(~a + b)
>  chisq.test(mytable)
>   fit  <-  lm(a~b)
>  summary(fit)
>  coefficients(fit)
>  confint(fit)
>  detach (Example13_13)
