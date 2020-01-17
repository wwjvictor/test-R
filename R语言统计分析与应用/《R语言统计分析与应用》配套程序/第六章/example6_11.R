>  example6_11  <- read.table ("example6_11.csv", header=TRUE, sep=",")
>  example6_11  <- within(example6_11,{
incubation  <- incubation+6
logincubation  <-log(incubation)})
> attach(example6_11)
>  gemmean <- exp(sum(logincubation*frequency)/sum(frequency))
>  mean  <-sum(incubation*frequency)/sum(frequency)
>  c(mean, gemmean)
>  detach(example6_11)
