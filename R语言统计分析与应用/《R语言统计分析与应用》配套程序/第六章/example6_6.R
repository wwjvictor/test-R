> install.packages("pastecs") 
> library(pastecs)
>  example6_6  <- read.table ("example6_6.csv", header=TRUE, sep=",")
>  example6_6 
>  stat.desc(example6_6["sales"], basic=TRUE, desc=TRUE, norm=TRUE)
