#plot3
png("C:/Users/yshi31/Documents/coursera_course/ExData_Plotting1/plot3.png",width = 480, height = 480)
plot(mydata$DateTime,mydata$Sub_metering_1,lty=1,type="l",ylab= "global active power (kilowatt)")
lines(mydata$DateTime,mydata$Sub_metering_2,type="l",col="red")
lines(mydata$DateTime,mydata$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()
