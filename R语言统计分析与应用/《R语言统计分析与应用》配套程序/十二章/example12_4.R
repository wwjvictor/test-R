>   p   <- 0.2
>   n_case  <-  48
>   n    <-  152
>   stde   <-  sqrt (p *(1- p)/n)
>   u  <-  (n_case/n-p)/stde
>   pvalue  <- 2*(1-pnorm(u))
>   pvalue
>   u
