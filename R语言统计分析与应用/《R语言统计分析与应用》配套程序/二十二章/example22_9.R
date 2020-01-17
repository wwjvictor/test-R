>  dotchart(mtcars$mpg, labels=row.names(mtcars), cex=0.7, 
main=¡±Gas Mileage for Car Models¡±)
>  x <- mtcars[order(mtcars$mpg),]
>  x$cy1  <- factor(x$cy1)
>  x$color[x$cy1==4]  <- ¡°red¡±
>  x$color[x$cy1==6]  <- ¡°blue¡±
>  x$color[x$cy1==8]  <- ¡°darkgreen¡±
>  dotchart(x$mpg, labels=row.names(x), cex=0.7, groups= x$cy1)
