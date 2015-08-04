setwd("/Users/anilkumar/Desktop/RCOURSE/EXPLORATORY/ExData_Plotting1")
source("tidy_data.R")

png(filename='plot2.png',width=480,height=480,units='px')

#hist(pc$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')
plot(pc$DateTime, pc$GlobalActivePower, type="l", ylab="Global Active Power (kilowatts)", xlab="")
# Turn off device
dev.off()
