#import txt file
x<-read.csv("D:/Transito/Exploratory Data Analysis/household_power_consumption.txt", header=T, sep=";", dec = ".")
#subset on selected dates
y<-subset(x, x$Date=='1/2/2007' | x$Date=='2/2/2007' )
#remove big file
rm(x)

#plot2
y$Day<-strptime(paste(as.character(y$Date),as.character(y$Time)), "%d/%m/%Y %H:%M:%S")
plot(y$Day, y$GAP, type="l", ylab="Global Active Power (kilowatts)", xlab="")
