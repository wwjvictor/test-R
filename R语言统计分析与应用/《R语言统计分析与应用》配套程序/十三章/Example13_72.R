>  Example13_7  <- read.table ("example13_7.csv", header=TRUE, sep=",")
>  attach(Example13_7)
>  Example13_7$x1  <- ifelse (a==1, 1, 0)
>  Example13_7$x2   <- ifelse (a==2, 1, 0)
>  Example13_7$x3   <- ifelse (a==3, 1, 0)
>  library(rms)
>  fit1   <-  lrm(b~ x1 + x2 ,  data=Example13_7, model=FALSE, x=FALSE, y=FALSE)
>  fit1
>  coefficients(fit1)
>  exp(coefficients(fit1))
>  detach (Example13_7)
