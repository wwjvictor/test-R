>  example7_10  <- read.table ("example7_10.csv", header=TRUE, sep=",")
>  attach(example7_10)
>  x1<-  x [group==1]
>  x2<-  x[group==2]
>  var.test(x1, x2, ratio =1)
>  t.test(x~group, var.equal=TRUE, alternative="two.sided", conf.level=0.95)
>   detach(example7_10)