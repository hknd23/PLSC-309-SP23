library(devtools)
install_github("jamesmartherus/anesr")
library(anesr)

#some interesting variables
preelectvars<-c('V161003','V161006',
  'V161096','V161113',
  'V161139')

#rename these variables

names<-c('attention','votepres2012','ftGOP',
         'prohealthcare','economy')

#import 2016 data
data('timeseries_2016')


#subset data by variable lists and rename 
anes2016<-timeseries_2016[,preelectvars]
colnames(anes2016)<-names

#replace negative values with missing
anes2016[anes2016< -7] <- NA

fit<-lm(ftGOP~economy,data=anes2016)

#create dummy
anes2016$obamavote<-ifelse(anes2016$votepres2012==1,1,0)
anes2016$romneyvote<-ifelse(anes2016$votepres2012==2,1,0)

fita<-lm(ftGOP~economy+obamavote+romneyvote+attention,data=anes2016)


fitmore<-lm(ftGOP~economy+ as.factor(votepres2012),data=anes2016)
