fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, "./house_power.zip")
unzip("./house_power.zip")
data <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?")
final <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
Set_time <- strptime(paste(final$Date, final$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
final <- cbind(Set_time,final)

#plotting functions
plot(final$Set_time, final$Sub_metering_1,type = "l",col = "black",xlab = "",ylab = "Energy sub metering")
lines(final$Set_time, final$Sub_metering_2, col = "red")
lines(final$Set_time,final$Sub_metering_3,col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = lines <- c("black", "red","blue"),lty = "solid")
