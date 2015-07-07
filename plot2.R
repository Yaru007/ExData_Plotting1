#plot2
png("C:/Users/yshi31/Documents/coursera_course/ExData_Plotting1/plot2.png",width = 480, height = 480)
plot(mydata$DateTime,mydata$Global_active_power,type="l",ylab= "global active power (kilowatt)")
dev.off()

