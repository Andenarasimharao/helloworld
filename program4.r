#print empty plot
lot.new()
plot(1,type="n",xlab="",ylab="",xlim=c(0,20),ylim=c(0,20))

#print box plot
data(iris)
par(mfrow=c(4,4))
boxplot(iris$Sepal.Length,col="red")
boxplot(iris$Sepal.Length~iris$Species,col="red")
boxplot(iris$Sepal.Length~iris$Species,col=heat.colors(3))
boxplot(iris$Sepal.Length~iris$Species,col=topo.colors3))
boxplot(iris$Petal.Length~iris$Species)

#print scatter plot
plot(x=iris$Petal.Length)
plot(x=iris$Petal.Length,y=iris$Species)



#print histogram
install.package('RColorBrewer')
library(RcolorBrewer)
data(VADeaths)
par(mfrow=c(2,3))
hist(VADeaths,col=brewer.pal(8,"Blues"),main="Blues 8 colors")
hist(VADeaths,col=brewer.pal(8,"Reds"),main="Reds 8 colors")
hist(VADeaths,col=brewer.pal(8,"Oranges"),main="Oranges 8 colors")
hist(VADeaths,col=brewer.pal(8,"DarkReds"),main="DarkReds 8 colors")
hist(VADeaths,col=brewer.pal(8,"Greys"),main="Greys 8 colors")
hist(VADeaths,col=brewer.pal(8,"Greens"),main="Greens 8 colors")

#print line chart
data(airpassengers)
plot(airpassengers,type="1")

#print bell curve of random normal distribution
n=floor(rnorm(10000,500,100))
t=table(n)
barplot(t)

#print pie chart
geeks=c(23,56,20,63)
labels=c("mumbai","pune","chennai","banglore")
pie(geeks,labels)

#print bar chart
marks=(70,85,80,74)
barplot(marks,main="comparing marks of 4 subjects",Xlab="marks",Ylab="subject",names.arg=c(english”,”science”,”history”),col=”draked”,horiz=FALSE)


#print corrlogram
install.packages('corrplot')
library(corrplot)
par(mfrow=c(2,1))
corr_matrix=cor(mtcars)
corrplot(corr_matrix)
corrplot(corr_matrix,method='number',type="lower")


#print Area chart
install.packages('ggplots')
install.packages('dplyr')
install.packages('tidyverse')
library(ggplots)
library(dplyr)
library(tidyverse)
group <- rep(c("NORTH","SOUTH","EAST","WEST","),times=4)
year <- as.numeric(rep(seq(2017,2020),each=4))
price <- runif(16,50,100)
data <- data.franme(year,price,group)
ggplot(data,aes(x=year,y=price,fill=group)) + geom_area()


