fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, "./house_power.zip")
unzip("./house_power.zip")
data <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?")
final <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
Set_time <- strptime(paste(final$Date, final$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
final <- cbind(Set_time,final)

plot(final$Set_time,final$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)")
