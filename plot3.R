#import the data
mydata = read.table("C:/Users/yshi31/Documents/coursera_course/household_power_consumption.txt",header = TRUE, sep = ";")
#update the date format
mydata$Date = as.character(mydata$Date)
mydata$Date = as.Date(mydata$Date,format = "%d/%m/%Y")
#view(mydata)
#truncate the data
mydata = subset(mydata,Date == as.Date('2007-02-01') | Date == as.Date('2007-02-02'))
#edit the dat
mydata$Global_active_power = as.numeric(as.character(mydata$Global_active_power))
mydata$Global_reactive_power = as.numeric(as.character(mydata$Global_reactive_power))
mydata$Voltage = as.numeric(as.character(mydata$Voltage))
mydata$Sub_metering_1 = as.numeric(as.character(mydata$Sub_metering_1))
mydata$Sub_metering_2 = as.numeric(as.character(mydata$Sub_metering_2))
mydata$Sub_metering_3 = as.numeric(as.character(mydata$Sub_metering_3))

mydata$DateTime = paste(mydata$Date,mydata$Time,sep=",")
mydata$DateTime = strptime(mydata$DateTime,format="%Y-%m-%d,%H:%M:%S")

#plot3
png("C:/Users/yshi31/Documents/coursera_course/ExData_Plotting1/plot3.png",width = 480, height = 480)
plot(mydata$DateTime,mydata$Sub_metering_1,lty=1,type="l",ylab= "global active power (kilowatt)")
lines(mydata$DateTime,mydata$Sub_metering_2,type="l",col="red")
lines(mydata$DateTime,mydata$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()
