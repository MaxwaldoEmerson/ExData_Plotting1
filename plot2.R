newdata <- mydata[mydata$Date == "1/2/2007" | mydata$Date == "2/2/2007",]
newdata$Date <- as.Date(newdata$Date, format = "%d/%m/%Y")
newdata$Global_active_power <- as.numeric(levels(newdata$Global_active_power))[newdata$Global_active_power]
newdata$DateTime <- as.POSIXct(paste(newdata$Date, newdata$Time))
with(newdata, plot(newdata$DateTime, newdata$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = " "))