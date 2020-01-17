> example22_4  <- read.table ("example22_4.csv", header=TRUE, sep=",")
> example22_4
> attach(example22_4)
> plot(x, y, xlab="diastolic pressure", 
 ylab="systolic pressure", 
main="relationship between diastolic pressure and systolic pressure")
> plot(x, y, type=¡±b¡±, xlab="diastolic pressure", 
 ylab="systolic pressure", 
main="relationship between diastolic pressure and systolic pressure")
