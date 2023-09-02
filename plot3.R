##load needed packages
library(stats)
library(base)
library(dplyr)

## read entire data and extract only needed data
data <- read.csv('household_power_consumption.txt', sep = ';')
needed_data <- filter(data, (Date == '1/2/2007'|Date =='2/2/2007'))

##open png graphic device and plotting graph(plot3)
png(filename='plot3.png', width = 480, height = 480)
plot(needed_data$Sub_metering_1, 
     xlab = '',
     ylab = 'Energy sub metering',
     type = 'l',
     xaxt = 'n', col='black')
lines(needed_data$Sub_metering_2, col='red')
lines(needed_data$Sub_metering_3, col='blue')
axis(side=1, at=c(1, 1440, 2880), labels=c('Thu', 'Fri', 'Sat'))
legend('topright', lty=c(1,1,1), col=c('black','red','blue'),
       legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
dev.off()
