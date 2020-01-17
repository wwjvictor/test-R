> install.packages(¡°survival¡±)
> library(survival)
>  example15_3  <- read.table ("example15_3.csv", header=TRUE, sep=",")
> attach(example15_3)
> total  <- survfit(Surv(t, censor)~1)
> summary(total)
> plot(total)
> separate  <- survfit(Surv(t, censor)~group)
> summary(separate)
> plot(separate, lty = c('solid','dashed'), col=c('black','blue'),
    xlab='survival time in days',ylab='survival probabilities')
> legend('topright', c('Group A',' Group B'), lty=c('solid','dashed'),
      col=c('black','blue'))
> survdiff(Surv(t, censor)~group)
