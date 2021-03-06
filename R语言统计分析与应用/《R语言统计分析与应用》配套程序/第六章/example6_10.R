> install.packages("doBy")
> library(doBy)
>  example6_10  <- read.table ("example6_6.csv", header=TRUE, sep=",")
> mystas <- function(x){
x <-x [!is.na(x)]
m <- mean(x)
n <- length(x)
s <-sd(x)
skew <- sum((x-m)^3/s^3)/n
kurt <- sum((x-m)^4/s^4)/n-3
return (c(n=n, mean=m,stdev=s, skew=skew, kurtosis=kurt))
}
>  summaryBy(sales~product, data=example6_10, FUN=mystas)
