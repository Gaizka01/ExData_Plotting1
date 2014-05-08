#To be executed with raw data txt file in working directory
png(filename = "plot3.png", width = 480, height = 480)
plot(WDays, data$Sub_metering_1, type ="l", ylab = "Energy sub metering", xlab = ""); lines (WDays, data$Sub_metering_2, col="red"); lines(WDays, data$Sub_metering_3, col = "blue")
dev.off()