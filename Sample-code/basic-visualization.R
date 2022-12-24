#there are some example datasets to practice. Details on the mtcars dataset:
#https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/mtcars


#To see just a few top lines:
head(mtcars)
head(mtcars,10)


#Or bottom:
tail(mtcars)
tail(mtcars,10)


# use $ to extract the variable/column of the data frame:

mtcars$mpg

mtcars$hp

#Histograms

#Density Plots
plot(density(mtcars$hp))


#create factors for categorical variables
mtcars$gear2<-as.factor(mtcars$gear)
barplot(prop.table(table(mtcars$gear2)))

#scatterplots
plot(mtcars$mpg~mtcars$hp )
#add labels and plot title: 

plot(mtcars$mpg~mtcars$hp, xlab="Horsepower", ylab="MPG",main="Horsepower and MPG")
