>  Example12_3  <- read.table ("example12_3.csv", header=TRUE, sep=",")
>  attach(Example12_3)
>  Example12_3$total   <-   a_number+b_number 
>  Example12_3$a_case   <-   Example12_3$total*a_incide
>  Example12_3$b_case   <-   Example12_3$total*b_incide
>  a_adjust  <-  sum(Example12_3$a_case)/sum(Example12_3$total)
>  b_adjust  <-  sum(Example12_3$b_case)/sum(Example12_3$total)
>  c (a_adjust, b_adjust)
>  detach(Example12_3)
