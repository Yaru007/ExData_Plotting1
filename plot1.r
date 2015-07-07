#plot1
png("C:/Users/yshi31/Documents/coursera_course/ExData_Plotting1/plot1.png",width = 480, height = 480)
hist(mydata$Global_active_power,main = ("Global Active Power"),xlab = "global active power (kilowatt)",ylab="Frequency",col="red")
dev.off()


