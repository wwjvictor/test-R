> example22_2  <- read.table ("example22_1.csv", header=TRUE, sep=",")
> example22_2
> attach(example22_2)
> count <-table(example22_2$gender)
> count
> pie(count, main="Simple Pie Chart")
> pie(count,col=rainbow(2), main="Simple Pie Chart with different colour")
> install.packages("plotrix")
> library(plotrix)
> pie3D(count,col=rainbow(2), main="3D Chart with different colour")
