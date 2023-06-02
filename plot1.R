dataset <- read.table("C:\\Users\\patri\\OneDrive\\Documents\\R Programming 2022\\household_power_consumption.txt", header = T, sep=";")
subset_data <- subset(dataset,dataset$Date=="1/2/2007" | dataset$Date=="2/2/2007")
GlobalActivePower <- as.numeric(subset_data$Global_active_power)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kW)")
