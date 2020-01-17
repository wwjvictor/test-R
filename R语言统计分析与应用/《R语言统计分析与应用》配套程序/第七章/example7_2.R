<  example7_2  <- read.table ("example7_2.csv", header=TRUE, sep=",")
<  t.test(example7_2$caco3, mu=20.7, alternative="two.sided", conf.level=0.95)
