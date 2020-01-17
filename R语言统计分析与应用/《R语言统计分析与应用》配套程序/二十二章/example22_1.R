> example22_1  <- read.table ("example22_1.csv", header=TRUE, sep=",")
> example22_1
> attach(example22_1)
> count <- table(gender)
> count
> barplot (count, 
main="simple bar plot", xlab="gender", ylab="frequency")
> barplot (count,
 main="simple bar plot", xlab="frequency ", ylab="gender ", horiz=TRUE)
> count2 <- table(gender, unit)
> count2
> barplot (count2,col=c("red", "green"),legend=rownames(count2),
 main="stacked bar plot", xlab="unit", ylab="frequency")
> barplot (count2,col=c("red", "green"),legend=rownames(count2),
 main="stacked bar plot", xlab="unit", ylab="frequency", beside=TRUE)
> means  <-aggregate(age,by=list(gender), FUN=mean)
> means
> barplot(means$x, names.arg=means$Group.1)
