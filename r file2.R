df<-data.frame(x=1:3,y=c("a","b","c"))
sd(airquality$Ozone,na.rm=T)
airquality<-datasets::airquality
###top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
####coloumns
airquality[50:60,c(1,2)]
df<-airquality[,-6]
####descriptive statistics
#1
summary(airquality[,c(4,5)])

airquality$Ozone
airquality$Wind
airquality$Temp
###
summary(airquality$Wind)
summary(airquality$Month)
#######ozone
summary(airquality$Ozone)
######summary of the data
summary(airquality)
summary(airquality$wind)
########visualization
########scatter plot
plot(airquality$Wind)
plot(airquality$Temp)
plot(airquality$Ozone)
plot(airquality)

###points and lines
plot(airquality$Wind,type ="l")
plot(airquality$Wind,type ="b")
plot(airquality$Wind,xlab ='ozone concentration',ylab ='no of instances',main ='ozone levels in SINGAPORE city',col='green',type ='b')
###horizontal bar plot
barplot(airquality$Ozone,main='ozone concentration in air',ylab = 'ozone levels',col ='blue',horiz= F,axes = T)

####histogram
hist(airquality$Temp)
hist(airquality$Temp,main='solar radiation values in air',xlab = 'solar rad',col='red')

####single boxplot
boxplot(airquality$Wind,main="boxplot")
boxplot.stats(airquality$wind)$out
###multiple box plot
boxplot(airquality[,1:4],main='multiple')
boxplot.stats(airquality$Ozone)$out

par(mfrows=c(3,3)mar=c(2,5,2,1),las=0,bty="0")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$ozone,type="l")
plot(airquality$Ozone,type="l")
plot(airquality$Ozone,type="l")
barplot(airquality$Ozone,main='ozone concentration in air',xlab='ozone levels',col='green,horiz= TRUE')
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)

summary(airquality)

