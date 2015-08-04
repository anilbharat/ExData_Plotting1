setwd("/Users/anilkumar/Desktop/RCOURSE/EXPLORATORY/ExData_Plotting1")
source("tidy_data.R")

png(filename='plot1.png',width=480,height=480,units='px')

hist(pc$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
dev.off()
