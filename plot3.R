#create png file
if(!file.exists('plots')) dir.create('plots')
png(filename = './plots/plot3.png', width = 480, height = 480, units='px')
#plot the first column of data
plot(newdata$DateTime, newdata$Sub_metering_1, col = "black", type = "l", ylim = c(0, 30), ylab = "Energy sub metering", xlab = " ") 
#add second and third Sub-metering columns as lines
lines(newdata$DateTime, newdata$Sub_metering_2, col = "red")
lines(newdata$DateTime, newdata$Sub_metering_3, col = "blue")
#add legend to plot
legend("topright", c("Sub_metering1", "Sub_metering2", "Sub_metering3"), col = c("black", "red", "blue"), lwd = 1)