SDEMT215Z<- data.frame(read.dbf("C://Users//SALA-C4//Desktop//SDEMT215.dbf"))
View(SDEMT215Z)
names(SDEMT215Z)
SDEMT215Z$CLASE2.1[as.numeric(SDEMT215Z$CLASE2) >= 0 & as.numeric(SDEMT215Z$EDA)<=2]<-1
SDEMT215Z$CLASE2.1[as.numeric(SDEMT215Z$CLASE2) >= 3 & as.numeric(SDEMT215Z$EDA)<=4]<-2
SDEMT215Z
is.numeric(table(SDEMT215Z$EDA))

attach(SDEMT215Z)
SDEMT215Z$CLASE2.2 <- ifelse(as.numeric(CLASE2) >= 1 & as.numeric(CLASE2)<=2,1,
                            ifelse(as.numeric(CLASE2) >= 3 & as.numeric(CLASE2)<=3,2, 3))

###TRABAJO EN CLASE###
detach(SDEMT215Z) 
DataTable (SDEMT215Z$CLASE2.1)
SDEMT215Z$EDA1[as.numeric(SDEMT215Z$EDA)>=0 & as.numeric(SDEMT215Z$EDA)<=15]<-1
SDEMT215Z$EDA1[as.numeric(SDEMT215Z$EDA)>15 & as.numeric(SDEMT215Z$EDA)<=31]<-2
SDEMT215Z$EDA1[as.numeric(SDEMT215Z$EDA)>31 & as.numeric(SDEMT215Z$EDA)<=60]<-3
SDEMT215Z$EDA1[as.numeric(SDEMT215Z$EDA)>60 & as.numeric(SDEMT215Z$EDA)<=98]<-4
SDEMT215Z$EDA1[as.numeric(SDEMT215Z$EDA)>98]<-5

require(questionr)
wtd.table(SDEMT215Z$EDA1)
SDEMT215Z$EDA1N <- ordered(SDEMT215Z$EDA1, levels=c(1,2,3,4,5),labels=c("Niños", "Jovenes","Adultos","Adultos Mayores","No especificado"))
attach(SDEMT215Z)
SDEMT215Z$EDA2<- ifelse(as.numeric(SDEMT215Z$EDA)>=0 & as.numeric(SDEMT215Z$EDA)<=15,1,ifelse(as.numeric(SDEMT215Z$EDA)>15 & as.numeric(SDEMT215Z$EDA)<=31,2,ifelse(as.numeric(SDEMT215Z$EDA)>31 & as.numeric(SDEMT215Z$EDA)<=60,3,ifelse(as.numeric(SDEMT215Z$EDA)>60 & as.numeric(SDEMT215Z$EDA)<=98,4,5))))
SDEMT215Z$EDA2N <- ordered(SDEMT215Z$EDA2, levels=c(1,2,3,4,5),labels=c("Niños", "Jovenes","Adultos","Adultos Mayores","No especificado"))
wtd.table(SDEMT215Z$EDA1N)
wtd.table(SDEMT215Z$EDA2N)
                  

