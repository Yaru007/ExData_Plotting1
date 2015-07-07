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
#plot1
png("C:/Users/yshi31/Documents/coursera_course/ExData_Plotting1/plot1.png",width = 480, height = 480)
hist(mydata$Global_active_power,main = ("Global Active Power"),xlab = "global active power (kilowatt)",ylab="Frequency",col="red")
dev.off()
