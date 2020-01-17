> example21_3  <- read.table ("example21_3.csv", header=TRUE, sep=",")
> attach(example21_3)
> summary(example21_3)
> str(example21_3)
> install.packages("ROCR")
> library(ROCR)
> pred1 <- prediction(example21_3$mRNA, example21_3$oncology)
> pred1
> pred2 <- prediction(example21_3$dna, example21_3$oncology)
> pred2
> perf1 <- performance(pred1,"tpr","fpr")
> perf2 <- performance(pred2,"tpr","fpr")
> auc1 <- performance(pred1,"auc")
> auc1
> auc2 <- performance(pred2,"auc")
> auc2
> plot(perf1, col="blue")
> plot(perf2, col="red", add=TRUE)
