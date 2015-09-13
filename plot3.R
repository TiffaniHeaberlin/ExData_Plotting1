plotdata<-read.table("C:/Users/slussetc/Documents/Data_Science_Certificate/Exploratory_Data_Analysis/household_power_consumption.txt",
          sep=";",header=TRUE,na.strings="?")
subsetdata <- plotdata[plotdata$Date=="1/2/2007" | plotdata$Date=="2/2/2007",]
hist(subsetdata$Global_active_power)
gap <- as.numeric(subsetdata$Global_active_power)
dtime <- strptime(paste(subsetdata$Date,subsetdata$Time),format="%d/%m/%Y %H:%M:%S")
png("C:/Users/slussetc/Documents/GitHub/Exploratory_Data_Analysis/ExData_Plotting1/plot3.png",
    width = 480, height = 480, units = "px")
plot(dtime,subsetdata$Sub_metering_1,type="l",col="black",ylab="Energy sub metering",xlab="")
points(dtime,subsetdata$Sub_metering_2,col="red",type="l")
points(dtime,subsetdata$Sub_metering_3,col="blue",type="l")
legend("topright",c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.off()
