# ExData_Plotting1/plot3.$

plot3 <- function() {

    source('houseHoldPower.R')
    data <- houseHoldPower()		# 2880 obs ov 9 var

    # open the png file -- the default is 480x480
    png('plot3.png')

    # BEGIN PLOT 
    par(mar=c(4,4,2,2))

    # set up axes
    plot(data$dateTime, data$Sub_metering_1, type='n', col='black',
	xlab='', ylab='', yaxt='n')
    par(new=TRUE)
    
    plot(data$dateTime, data$Sub_metering_2, type='l', col='red',
	xlab='', ylab='', yaxt='n')
    par(new=TRUE)

    plot(data$dateTime, data$Sub_metering_3, type='l', col='blue',
	xlab='', ylab='', yaxt='n')
    par(new=TRUE)

    # these actually apply to all three plots
    mtext('Energy sub metering', side=1, outer=TRUE)
   
    # y-axis ticks
    yt <- seq(from=0, to = max (data$Sub_metering_1), by=10)
    axis(side=2, at = yt)
 
    # add legend
    legend('topright', c('Sub_Metering_1', 'Sub_metering_2', 'Sub_metering_3'),
	lty=c(1,1,1), 		# line types
        lwd=c(2,2,2),           # line widths
        col=c('black', 'red', 'blue')    # line colors
        )
    # END PLOT

    # close the file - this actually outputs the data
    dev.off()
}
