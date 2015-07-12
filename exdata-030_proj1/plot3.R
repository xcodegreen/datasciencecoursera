plot3 <- function() {
  plot(plotData$timestamp,plotData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(plotData$timestamp,plotData$Sub_metering_2,col="red")
  lines(plotData$timestamp,plotData$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
 
}
savePlot("./plot3.png", plot3)