> library(RODBC)
> Example2_2  <- odbcConnectExcel(¡°example2_2.xls¡±)
> mydata <- sqlFetch(Example2_2, ¡°sheet1¡±)
> odbcClose (Example2_2)
