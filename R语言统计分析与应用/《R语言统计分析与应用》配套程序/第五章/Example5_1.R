>  studentname <- c("John Davis", "Angela Williams", "Bullwinkle Moose", "David Jones", "Janice Markhammer", "Cheryl Cushing", "Reuven Ytzrhak", "Greg Knox", "Joel England", "Mary Rayburn")
>  math <-  c(502, 600, 412, 358, 495, 512, 410, 625, 573, 522)
>  science  <- c(95, 99, 80, 82, 75, 85, 80, 95, 89, 86)
>  English  <- c(25, 22, 18, 15, 20, 28, 15, 30, 27,18)
>  scoredata  <- data.frame(studentname, math, science, English, stringsAsFactors=FALSE)
>  z  <- scale(scoredata[2:4])
>  z
>  Score  <-  apply(z, 1, mean)
>  scoredata2  <- cbind(scoredata, Score)
> scoredata2
> y <- quantile(Score, c(0.8,0.6,0.4,0.2))
> y
> scoredata2$grade [Score >=y[1]]  <-"A"
> scoredata2$grade [Score < y[1] & Score >=y[2]]  <-"B"
> scoredata2$grade [Score < y[2] & Score >=y[3]]  <-"C"
> scoredata2$grade [Score < y[3] & Score >=y[4]]  <-"D"
> scoredata2$grade [Score < y[4]]  <-  "E"
> scoredata2
> name <- strsplit((scoredata2$studentname), " ")
> name
>  lastname  <-sapply(name, "[", 2)
> firstname <-sapply(name, "[", 1)
> scoredata3 <- cbind(firstname, lastname, scoredata2[,-1])
> scoredata3
>  scoredata4 <-scoredata3 [order(lastname, firstname),]
> scoredata4
