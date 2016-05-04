#create png file
if(!file.exists('plots')) dir.create('plots')
png(filename = './plots/plot4.png', width = 480, height = 480, units='px')
#set mfrow
par(mfrow = c(2,2))
#plot the first plot
with(newdata, plot(newdata$DateTime, newdata$Global_active_power, type = "l", ylab = "Global Active Power", xlab = " "))
#plot second plot
with(newdata, plot(newdata$DateTime, newdata$Voltage, type = "l", ylab = "Voltage", xlab = " "))
#plot third plot
plot(newdata$DateTime, newdata$Sub_metering_1, col = "black", type = "l", ylim = c(0, 30), ylab = "Energy sub metering", xlab = " ") 
lines(newdata$DateTime, newdata$Sub_metering_2, col = "red")
lines(newdata$DateTime, newdata$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering1", "Sub_metering2", "Sub_metering3"), col = c("black", "red", "blue"))
#plot fourth plot
with(newdata, plot(newdata$DateTime, newdata$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = " "))