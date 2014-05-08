#To be executed with raw data txt file in working directory
png(filename = "plot2.png", width = 480, height = 480)
data = read.table("household_power_consumption.txt", skip = 66637, nrows = 2880, header = F, sep = ";", col.names = colnames(read.table("household_power_consumption.txt", nrows = 1, sep = ";", header = TRUE)))
wDays <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')
plot(wDays, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()