loadData<-function()
{
    if(!file.exists("exdata-data-household_power_consumption.zip")) 
    {
      temp <- tempfile()
      download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
      file <- unzip(temp)
      unlink(temp)
    }
    hpower <- read.table(file, header=T, sep=";", colClasses = c("character","character",rep("numeric",7)),  na.strings=c("NA", "?"), stringsAsFactors=F)    
    plotData <- hpower[(hpower$Date=="1/2/2007") | (hpower$Date=="2/2/2007"),] 
    rm(hpower)  
    plotData<-transform(plotData, timestamp=strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S") ) 
}

plotData<-loadData()

savePlot<-function(filename, FUN) 
{  
  dev.off()
  FUN()
  dev.copy(png, file=filename, width=480, height=480)
  dev.off()
  cat(filename, " has been saved in current work directory:", getwd())
}
