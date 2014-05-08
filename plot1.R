#To be executed with raw data txt file in working directory
png(filename = "plot1.png", width = 480, height = 480)
data = read.table("household_power_consumption.txt", skip = 66637, nrows = 2880, header = F, sep = ";", col.names = colnames(read.table("household_power_consumption.txt", nrows = 1, sep = ";", header = TRUE)))
hist(data$Global_active_power, col ="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()