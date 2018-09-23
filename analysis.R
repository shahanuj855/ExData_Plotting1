

#download and import data 
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, "./house_power.zip")
unzip("./house_power.zip")
data <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")

