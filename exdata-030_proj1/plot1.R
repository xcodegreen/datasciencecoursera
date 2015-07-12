plot1 <- function() {
  hist(plotData$Global_active_power, main ="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")

}

savePlot("./plot1.png", plot1)