#To be executed with raw data txt file in working directory
png(filename = "plot4.png", width = 480, height = 480)
data = read.table("household_power_consumption.txt", skip = 66637, nrows = 2880, header = F, sep = ";", col.names = colnames(read.table("household_power_consumption.txt", nrows = 1, sep = ";", header = TRUE)))
wDays <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')
par(mfrow = c(2,2))
with(data, {
plot(wDays, data$Global_active_power, type ="l", ylab = "Global Active Power", xlab ="")
plot(wDays, data$Voltage, type ="l", ylab = "Voltage", xlab = "datetime")
plot(wDays, data$Sub_metering_1, type ="l", ylab = "Energy sub metering", xlab = ""); lines (wDays, data$Sub_metering_2, col="red"); lines(wDays, data$Sub_metering_3, col = "blue")
plot(wDays, data$Global_reactive_power, type ="l", ylab = "Global_reactive_power", xlab = "datetime")})
dev.off()