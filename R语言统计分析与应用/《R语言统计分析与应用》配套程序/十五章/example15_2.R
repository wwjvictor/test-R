> hmohiv<-read.table("http://www.ats.ucla.edu/stat/r/examples/asa/hmohiv.csv", sep=",", header = TRUE)
> attach(hmohiv)
> hmohiv
> library(KMsurv)
> library(nlme)
> t6m<-floor(time/6)
> tall<-data.frame(t6m, censor)
> die<-gsummary(tall, sum, groups=t6m)
> total<-gsummary(tall, length, groups=t6m)
> rm(t6m)
> ltab.data<-cbind(die[,1:2], total[,2])
> detach(hmohiv)
> attach(ltab.data)
> 
> lt=length(t6m)
> t6m[lt+1]=NA
> nevent=censor
> nlost=total[,2] - censor
> mytable<-lifetab(t6m, 100, nlost, nevent)
> mytable[,1:5]
> plot(t6m[1:11], mytable[,5], type="s", xlab="Survival time in every 6 month", 
+      ylab="Proportion Surviving")
