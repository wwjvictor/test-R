> install.packages("Hmisc")
> library(Hmisc)
>  example18_2  <- read.table ("example18_2.csv", header=TRUE, sep=",")
>  example18_2
> str(example18_2)
> plot(example18_2)
>  kc1 <- kmeans(example18_2,centers=1, nstart=1, trace=TRUE)
>  kc1
>  kc2 <- kmeans(example18_2,centers=2, nstart=1, trace=TRUE)
>  kc2
>  kc3 <- kmeans(example18_2,centers=3, nstart=1, trace=TRUE)
>  kc3
