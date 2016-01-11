
library(dplyr)

houseHoldPower <- function() {
    data <- read.table('household_power_consumption.txt', header=TRUE,
            na.strings='?', stringsAsFactors=FALSE, sep=';')
    #data <- subset(data, Date=='2007/02/01' | Date=='2007/02/02')
    data <- subset(data, Date=='1/2/2007' | Date=='2/2/2007')
    # =dateTime <- strp
    data <- mutate(data, dateTime=paste(Date, Time, sep=' '))
    data$dateTime = as.POSIXct(strptime(data$dateTime, format='%d/%m/%Y %T'))

    data       
}
