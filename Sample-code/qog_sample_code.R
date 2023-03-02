

library(devtools)
devtools::install_github("ropengov/rqog")

#But we must library/ import packages everytime 

library(rqog)



#Import qog
standard <- read_qog("standard", "time-series")
variables<-c("cname",'ccodecow','year',
             'p_polity2','wdi_oilrent','wdi_lifexp','wdi_mortinf')
#subset data by variable list and years
newdataset<-standard[,variables]
dataset1980<-subset(newdataset,newdataset$year>1979)
dataset1980b<-subset(newdataset,newdataset$year>=1980)

#some tests
cor.test(dataset1980$p_polity2,dataset1980$wdi_oilrent,use='complete.obs')
plot(dataset1980$p_polity2,dataset1980$wdi_oilrent,pch=19)
modela<-lm(p_polity2~wdi_oilrent,data=dataset1980)

summary(modela)
