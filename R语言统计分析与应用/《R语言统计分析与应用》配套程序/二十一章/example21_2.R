> example21_2  <- read.table ("example21_2.csv", header=TRUE, sep=",")
> example21_2
> attach(example21_2)
> summary(example21_2)
> str(example21_2)
> install.packages("ROCR")
> library(ROCR)
> pred <- prediction(example21_2$value, example21_2$group)
> pred
> perf <- performance(pred,"tpr","fpr")
> plot(perf)
> perf1 <- performance(pred, "prec", "rec")
> plot(perf1)
> perf2 <- performance(pred, "sens", "spec")
> plot(perf2)
> auc <- performance(pred,"auc")
> auc
