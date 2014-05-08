#To be executed with raw data txt file in working directory
png(filename = "plot2.png", width = 480, height = 480)
wDays <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')
plot(wDays, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()