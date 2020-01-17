> example22_6  <- read.table ("example22_6.csv", header=TRUE, sep=",")
> example22_6
> attach(example22_6)
> boxplot(beishu~type, data= example22_6,)
> boxplot(beishu~type, data= example22_6, notch=TRUE)
