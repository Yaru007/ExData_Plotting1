#plot4
png("C:/Users/yshi31/Documents/coursera_course/ExData_Plotting1/plot4.png",width = 480, height = 480)
par(mfrow = c(2, 2))
#1
plot(mydata$DateTime,mydata$Global_active_power,type="l",ylab= "global active power (kilowatt)") 
#2
plot(mydata$DateTime,mydata$Voltage,type="l",ylab= "Voltage")
#3
plot(mydata$DateTime,mydata$Sub_metering_1,lty=1,type="l",ylab= "global active power (kilowatt)")
lines(mydata$DateTime,mydata$Sub_metering_2,type="l",col="red")
lines(mydata$DateTime,mydata$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,bty = "n")
#4
plot(mydata$DateTime,mydata$Global_reactive_power,type="l")
dev.off()