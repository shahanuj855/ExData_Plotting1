
data <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?")
final <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
Set_time <- strptime(paste(final$Date, final$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
final <- cbind(Set_time,final)

par(mfrow=c(2,2))
plot(final$Set_time,final$Global_active_power,type="l",xlab = "",ylab = "Global Active")
plot(final$Set_time,final$Voltage,type = "l",xlab = "datetime", ylab = "Voltage")

plot(final$Set_time, final$Sub_metering_1,type = "l",col = "black",xlab = "",ylab = "Energy sub metering")
lines(final$Set_time, final$Sub_metering_2, col = "red")
lines(final$Set_time,final$Sub_metering_3,col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = lines <- c("black", "red","blue"),lty = "solid")

plot(final$Set_time,final$Global_reactive_power,type = "l",xlab = "datetime", ylab = "Global_reactive_power")
