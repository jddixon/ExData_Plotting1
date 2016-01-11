# ExData_Plotting1/plot1.$

plot1 <- function() {

    source('houseHoldPower.R')
    data <- houseHoldPower()		# 2880 obs ov 9 var

    # open the png file -- the default is 480x480
    png('plot1.png')
 
    # make the plot
    hist(data$Global_active_power, 
        col='red',
        xlab='Global Active Power (kilowatts)',
        ylab='Frequency',
        main='Global Active Power')

    # close the file - this actually outputs the data
    dev.off()
}
