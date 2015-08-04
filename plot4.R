setwd("/Users/anilkumar/Desktop/RCOURSE/EXPLORATORY/ExData_Plotting1")
source("tidy_data.R")

png(filename='plot4.png',width=480,height=480,units='px')

par(mfrow = c(2,2))
plot(pc$DateTime, pc$GlobalActivePower, type="l", ylab="Global Active Power (kilowatts)", xlab="")

plot(pc$DateTime, pc$Voltage, type="l", ylab="Voltage", xlab="datetime")

col_names <- c("black","red","blue")
label_name <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
plot(pc$DateTime, pc$SubMetering1, type="l", col = col_names[1], ylab="Energy sub metering", xlab="")
lines(pc$DateTime, pc$SubMetering2, type="l", col = col_names[2])
lines(pc$DateTime, pc$SubMetering3, type="l", col = col_names[3])

plot(pc$DateTime, pc$GlobalReactivePower, type="l", ylab="Global_reactive_power", xlab="datetime")

# Turn off device
dev.off()
