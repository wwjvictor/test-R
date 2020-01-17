>  x1   <-23
>  x2   <-13
>  n1   <- 80
>  n2   <-85
>  p    <- (x1+x2)/(n1+n2)
>  std  <-sqrt(p*(1-p)*(1/n1+1/n2))
>  u   <- (x1/n1-x2/n2)/std
>  pvalue  <- 2*(1-pnorm(u))
>  u
>  pvalue
