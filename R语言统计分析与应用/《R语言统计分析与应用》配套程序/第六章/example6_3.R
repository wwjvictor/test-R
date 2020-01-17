>  example6_3  <- read.table ("example6_3.csv", header=TRUE, sep=",")
> example6_3 
> mystas <- function(x){
x <-x [!is.na(x)]
m <- mean(x)
n <- length(x)
s <-sd(x)
skew <- sum((x-m)^3/s^3)/n
kurt <- sum((x-m)^4/s^4)/n-3
return (c(n=n, mean=m,stdev=s, skew=skew, kurtosis=kurt))
}
> sapply(example6_3[2], mystas)
