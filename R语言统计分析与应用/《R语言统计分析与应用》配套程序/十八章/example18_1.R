> install.packages("Hmisc")
> library(Hmisc)
>  example18_1  <- read.table ("example18_1.csv", header=TRUE, sep=",")
>  example18_1
> str(example18_1)
> plot(example18_1)
>  example18_1  <- as.matrix(example18_1)
> v <- varclus(example18_1, similarity="spear")
> v
> print(round(v$sim,2))
> plot(v)
