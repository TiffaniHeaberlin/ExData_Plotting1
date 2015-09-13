plotdata<-read.table("C:/Users/slussetc/Documents/Data_Science_Certificate/Exploratory_Data_Analysis/household_power_consumption.txt",
          sep=";",header=TRUE,na.strings="?")
subsetdata <- plotdata[plotdata$Date=="1/2/2007" | plotdata$Date=="2/2/2007",]
hist(subsetdata$Global_active_power)
gap <- as.numeric(subsetdata$Global_active_power)
dtime <- strptime(paste(subsetdata$Date,subsetdata$Time),format="%d/%m/%Y %H:%M:%S")
png("C:/Users/slussetc/Documents/GitHub/Exploratory_Data_Analysis/ExData_Plotting1/plot2.png",
    width = 480, height = 480, units = "px")
plot(dtime,gap,type="l",ylab="Global Active Power (kilowatts)")
dev.off()
