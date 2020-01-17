> example20_1  <- read.table ("example20_1.csv", header=TRUE, sep=",")
> example20_1
> attach(example20_1)
> summary(example20_1)
>  test<-scale(example20_1)
>  ca<-cancor(test[,1:2],test[,3:6],xcenter=TRUE, ycenter=TRUE)
> ca
> U<-as.matrix(test[, 1:2])%*% ca$xcoef   
> V<-as.matrix(test[, 3:6])%*% ca$ycoef
> plot(U[,1], V[,1], xlab="U1", ylab="V1")
> plot(U[,2], V[,2], xlab="U2", ylab="V2")
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
>  corcoef.test(r=ca$cor,n=103,p=2,q=4)
