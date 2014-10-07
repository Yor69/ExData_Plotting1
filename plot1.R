#import txt file
x<-read.csv("D:/Transito/Exploratory Data Analysis/household_power_consumption.txt", header=T, sep=";", dec = ".")
#subset on selected dates
y<-subset(x, x$Date=='1/2/2007' | x$Date=='2/2/2007' )
#remove big file
rm(x)

#plot1
y$GAP<- as.numeric(as.character(y$Global_active_power))
hist(y$GAP, main="Global Active Power", xlab="Global Active Power (kilowatts)", col = "red")
