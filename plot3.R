#To be executed with raw data txt file in working directory
png(filename = "plot3.png", width = 480, height = 480)
data = read.table("household_power_consumption.txt", skip = 66637, nrows = 2880, header = F, sep = ";", col.names = colnames(read.table("household_power_consumption.txt", nrows = 1, sep = ";", header = TRUE)))
wDays <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')
plot(wDays, data$Sub_metering_1, type ="l", ylab = "Energy sub metering", xlab = ""); lines (wDays, data$Sub_metering_2, col="red"); lines(wDays, data$Sub_metering_3, col = "blue")
dev.off()