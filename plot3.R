#import txt file
x<-read.csv("D:/Transito/Exploratory Data Analysis/household_power_consumption.txt", header=T, sep=";", dec = ".")
#subset on selected dates
y<-subset(x, x$Date=='1/2/2007' | x$Date=='2/2/2007' )
#remove big file
rm(x)

#plot 3
y$S1<- as.numeric(as.character(y$Sub_metering_1))
y$S2<- as.numeric(as.character(y$Sub_metering_2))
y$S3<- as.numeric(as.character(y$Sub_metering_3))
plot(y$Day, y$S1, type="l", ylab="Energy sub metering", xlab="")
lines(y$Day, y$S2, col="red")
lines(y$Day, y$S3, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"), cex=.75)
