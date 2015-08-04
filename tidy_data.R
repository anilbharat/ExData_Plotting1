setwd("/Users/anilkumar/Desktop/RCOURSE/EXPLORATORY/ExData_Plotting1")

Url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(Url, destfile = "powerconsumption.zip", method="curl")
unzip("powerconsumption.zip", overwrite=TRUE)

object.size("household_power_consumption.txt")

pc <- read.table("household_power_consumption.txt", header=TRUE, sep = ";")

object.size(pc)
attach(pc)
pc <- pc[pc$Date == "1/2/2007" | pc$Date == "2/2/2007",]

# convert date and time variables

colname<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
        'SubMetering1','SubMetering2','SubMetering3')

colnames(pc) <- colname

pc$DateTime <- dmy(pc$Date)+hms(pc$Time)
pc <- pc[,c(10,3:9)]

head(pc)
nrow(pc)

# write in tidy data form. 

write.table(pc,file="pc.txt",sep="|",row.names=FALSE)

  
pc<-read.table("pc.txt",header=TRUE,sep='|')
pc$DateTime<-as.POSIXlt(pc$DateTime)
  


# remove the large raw data set 
if (file.exists("pc.txt")) {
  x<-file.remove("pc.txt")
}
 
  