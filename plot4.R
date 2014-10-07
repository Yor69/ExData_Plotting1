#import txt file
x<-read.csv("D:/Transito/Exploratory Data Analysis/household_power_consumption.txt", header=T, sep=";", dec = ".")
#subset on selected dates
y<-subset(x, x$Date=='1/2/2007' | x$Date=='2/2/2007' )
#remove big file
rm(x)

y$GAP<- as.numeric(as.character(y$Global_active_power))
y$Day<-strptime(paste(as.character(y$Date),as.character(y$Time)), "%d/%m/%Y %H:%M:%S")
y$S1<- as.numeric(as.character(y$Sub_metering_1))
y$S2<- as.numeric(as.character(y$Sub_metering_2))
y$S3<- as.numeric(as.character(y$Sub_metering_3))
y$volt<- as.numeric(as.character(y$Voltage))
y$GRP<- as.numeric(as.character(y$Global_reactive_power))

#plot4
par(mfrow=c(2,2))
plot(y$Day, y$GAP, type="l", ylab="Global Active Power (kilowatts)", xlab="", cex=.5)
plot(y$Day, y$volt, type="l", ylab="Voltage", xlab="datetime", cex=.5)
plot(y$Day, y$S1, type="l", ylab="Energy sub metering", xlab="")
lines(y$Day, y$S2, col="red")
lines(y$Day, y$S3, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"), cex=.2, bty="n")
plot(y$Day, y$GRP, type="h", ylab="Global_reactive_power", xlab="datetime")

