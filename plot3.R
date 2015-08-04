setwd("/Users/anilkumar/Desktop/RCOURSE/EXPLORATORY/ExData_Plotting1")
source("tidy_data.R")

png(filename='plot3.png',width=480,height=480,units='px')

#hist(pc$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')
col_names <- c("black","red","blue")
label_name <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
plot(pc$DateTime, pc$SubMetering1, type="l", col = col_names[1], ylab="Energy sub metering", xlab="")
lines(pc$DateTime, pc$SubMetering2, type="l", col = col_names[2])
lines(pc$DateTime, pc$SubMetering3, type="l", col = col_names[3])

legend("topright", legend = label_name, col = col_names, lty = "solid")
# Turn off device
dev.off()
