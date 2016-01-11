# ExData_Plotting1/plot2.$

plot2 <- function() {

    source('houseHoldPower.R')
    data <- houseHoldPower()		# 2880 obs ov 9 var

    # open the png file -- the default is 480x480
    png('plot2.png')
 
    # make the plot
    plot(data$dateTime, data$Global_active_power,
        xlab='',
        ylab='Global Active Power (kilowatts)',
	type='l')

    # close the file - this actually outputs the data
    dev.off()
}
