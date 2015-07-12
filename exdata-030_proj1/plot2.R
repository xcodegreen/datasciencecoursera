plot2 <- function() {
  plot(plotData$timestamp,plotData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  
}
savePlot("./plot2.png", plot2)