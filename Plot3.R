dataset <- read.table("C:\\Users\\patri\\OneDrive\\Documents\\R Programming 2022\\household_power_consumption.txt", header = T, sep=";")
subset_data <- subset(dataset,dataset$Date=="1/2/2007" | dataset$Date=="2/2/2007")
DateTime <- strptime(paste(subset_data$Date,subset_data$Time,sep = " "),"%d/%m/%Y %H:%M:%S")

Sub_metering1 <- as.numeric(subset_data$Sub_metering_1)
Sub_metering2 <- as.numeric(subset_data$Sub_metering_2)
Sub_metering3 <- as.numeric(subset_data$Sub_metering_3)

plot(DateTime,Sub_metering1,type = "b",ylab = "Energy sub metering",xlab = "")
lines(DateTime,Sub_metering2,type = "b",col = "red")
lines(DateTime,Sub_metering3,type = "b",col = "blue") 