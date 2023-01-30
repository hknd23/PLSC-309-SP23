# - This is a comment. Code does not run on lines with # 
#Import and assign name to data
PSUFootball<-read.csv("https://raw.githubusercontent.com/hknd23/PLSC-309-SP23/main/Data/PSUFootball.csv")

dim(PSUdata)
mean(PSUdata$Pts,na.rm=TRUE)
median(PSUdata$Pts,na.rm=TRUE)
sd(PSUdata$Pts,na.rm=TRUE)
summary(PSUdata)

#setwd("C:/Users/nguye/My Drive/PLSC 309")
#library(readr)
#PSUFootball <- read_csv("PSUFootball.csv")



#Change text to Factors
PSUFootball$WinnLoss<-as.factor(PSUFootball$WinnLoss)

#Tabulate Frequency Tables
table(PSUFootball$WinnLoss)
table(PSUFootball$Pts)


#Create cut points for Histograms

cutpoints <- c(0,20, 40, 60)

table(cut(PSUFootball$Pts, cutpoints))
hist(PSUFootball$Pts,col="firebrick1", main="PSU Football Scores",xlab = "Points")

#rainbow(n), heat.colors(n), terrain.colors(n), topo.colors(n), and cm.colors(n)
#sub n for number of bars

barplot(table(PSUFootball$WinnLoss),col = rainbow(2),main = "Losses and Wins",xlab='Win/Loss',ylab='Count')

#box plots
boxplot(PSUFootball$Pts,main='PSU Points',ylab='Points')

#Grouped Box plots
boxplot(Pts~WinnLoss, data=PSUFootball,col=rainbow(2))


#box plots with outliers
pointsl<-c(PSUFootball$Pts,100)
boxplot(pointsl,main="PSU Scores with Outliers")

#Scatterplots
plot(PSUFootball$Pts,PSUFootball$Opp, xlab="PSU Points",ylab='Opponent Points'
     ,main="Scatterplot",pch=16,cex=2,col = PSUFootball$WinnLoss)

legend("topright",
       legend = levels(PSUFootball$WinnLoss),
       pch = 19,
       col= factor(levels(PSUFootball$WinnLoss)))

#Create binary categories for Big 10 games or not
PSUFootball$Big10<-ifelse(PSUFootball$Conf=="Big Ten",1,0)
plot(as.numeric(PSUFootball$WinnLoss),PSUFootball$Big10,
     main = "Bad Plot", xlab="" )


