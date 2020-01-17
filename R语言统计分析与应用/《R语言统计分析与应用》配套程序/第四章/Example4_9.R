> library(pwr) 
> pwr.2p.test(h=ES.h(0.5217, 0.1538), sig.level= 0.05, 
power= 0.9, alternative="two.sided")
> pwr.2p.test(n=20, h=ES.h(0.5217, 0.1538), sig.level= 0.05, 
alternative="two.sided")
