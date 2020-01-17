> example20_2  <- read.table ("example20_2.csv", header=TRUE, sep=",")
> example20_2
> attach(example20_2)
> summary(example20_2)
>  test<-scale(example20_2)
>  ca<-cancor(test[,1:9],test[,10:14],xcenter=TRUE, ycenter=TRUE)
> ca
> U<-as.matrix(test[, 1:9])%*% ca$xcoef   
> V<-as.matrix(test[, 10:14])%*% ca$ycoef
> plot(U[,1], V[,1], xlab="U1", ylab="V1")
> plot(U[,2], V[,2], xlab="U2", ylab="V2")
> plot(U[,3], V[,3], xlab="U3", ylab="V3")
> plot(U[,4], V[,4], xlab="U4", ylab="V4")
> plot(U[,5], V[,5], xlab="U5", ylab="V5")
> corcoef.test<-function(r, n, p, q, alpha=0.1){
  #r为相关系数 n为样本个数 且n>p+q
  m<-length(r);  Q<-rep(0, m);  lambda <- 1
  for (k in m:1){
    lambda<-lambda*(1-r[k]^2);   #检验统计量
    Q[k]<- -log(lambda)   #检验统计量取对数
  }
  s<-0;  i<-m
  for (k in 1:m){
    Q[k]<- (n-k+1-1/2*(p+q+3)+s)*Q[k]  #统计量    
    chi<-1-pchisq(Q[k], (p-k+1)*(q-k+1))      
    if (chi>alpha){
      i<-k-1; break
    }
    s<-s+1/r[k]^2
  }
  i  #显示输出结果 选用第几对典型变量
}
>  corcoef.test(r=ca$cor,n=1495, p=9,q=5)
