mydata <- read.table("household_power_consumption.txt", sep = ";", header = T)
newdata <- mydata[mydata$Date == "1/2/2007" | mydata$Date == "2/2/2007",]
plot1 <-as.numeric(as.character(newdata$Global_active_power))
hist(plot1, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red", axes = FALSE)
axis(2, c(0,200,400,600,800,1000,1200))
axis(1, c(0,2,4,6))