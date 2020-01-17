>  example18_3  <- read.table ("example18_2.csv", header=TRUE, sep=",")
> out.dist <- dist(example18_3, method="euclidean")    
> out.dist
> out.hclust<- hclust(out.dist,method="complete")
> plclust(out.hclust)
> out.id<- cutree(out.hclust,k=4) 
> out.id
