>  Example9_5  <- read.table ("example9_5.csv", header=TRUE, sep=",")
>  attach(Example9_5)
>  fit  <-  lm(SALES~ADV + ADVLAG1 + ADVLAG2)
>  anova(fit)
>  summary (fit)
>  SALES
>  fitted (fit)
>  residuals (fit)
>  detach (Example9_5)
