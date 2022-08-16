####
 e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm = T)

####
skewness<-datasets::skewness

###top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)
####coloumns
e_quakes[20:50,c(1,2)]
df<-e_quakes[,-6]
###descriptive statistics
summary(e_quakes[,c(4,5)])
e_quakes$long
e_quakes$depth
e_quakes$stations
####
summary(e_quakes$long)
summary(e_quakes$depth)
####summary of the data
summary(e_quakes)
summary(e_quakes$lat)
###visualization
###scatter plot
plot(e_quakes$lat)
plot(e_quakes$depth)
plot(e_quakes$long)
plot(e_quakes)
###points and lines
plot(e_quakes$lat,type ='l')
plot(e_quakes$depth,type='b')
plot(e_quakes$depth,xlab ='lat concentration',ylab='no of instances',main ='lat levels in GERMANY city',col='blue',type='b')
###horizontal bar plot
barplot(e_quakes$depth,main='lat levels on earth',ylab='lat levels'col='blue',horiz=T,axes=F)
####histogram
hist(e_quakes$long)
hist(e_quakes$long,main='depth levels in earth',xlab='depth level',col='blue')
hist(e_quakes$depth)
hist(e_quakes$depth,main='lat levels in earth',xlab='lat value'col='blue')
###single box plot
boxplot(e_quakes$long,main='boxplot')
boxplot.stats(e_quakes$long)$out
###multiple box plots
boxplot(e_quakes[,1:4],main='multiple')
boxplot.stats(e_quakes$stations)$out
summary((e_quakes))


install.packages("moments")
library(moments)

moments::skewness(e_quakes$lat)
moments::skewness(e_quakes$long)
moments::skewness(e_quakes$depth)
moments::skewness(e_quakes$stations)


##kurtosis
moments::kurtosis(e_quakes$lat)
moments::kurtosis(e_quakes$depth)
moments::kurtosis(e_quakes$stations)

###to find the variance of the given dataset
var(e_quakes$long)
var(e_quakes$depth)
