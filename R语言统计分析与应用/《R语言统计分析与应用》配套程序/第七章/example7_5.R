<  example7_5  <- read.table ("example7_5.csv", header=TRUE, sep=",")
<  t.test(example7_5$y1,example7_5$y2, paired=TRUE, alternative="two.sided", conf.level=0.95)


