<  example7_6  <- read.table ("example7_6.csv", header=TRUE, sep=",")
< t.test(example7_6$year2001, example7_6$year2002, paired=TRUE, alternative="two.sided", conf.level=0.95)
