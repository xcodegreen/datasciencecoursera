plot4 <- function() {
  par(mfrow=c(2,2))
  
  ##Plot 1
  plot(plotData$timestamp,plotData$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  ##Plot 2
  plot(plotData$timestamp,plotData$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  ##Plot 3
  plot(plotData$timestamp,plotData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(plotData$timestamp,plotData$Sub_metering_2,col="red")
  lines(plotData$timestamp,plotData$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty: removes the box, cex: shrinks the text
  
  #Plot 4
  plot(plotData$timestamp,plotData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  
}

savePlot("./plot4.png", plot4)
