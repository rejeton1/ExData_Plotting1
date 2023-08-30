##load needed packages
library(stats)
library(base)
library(dplyr)

## read entire data and extract only needed data
data <- read.csv('household_power_consumption.txt', sep = ';')
needed_data <- filter(data, (Date == '1/2/2007'|Date =='2/2/2007'))

## make time class column
needed_data$DateandTime <- paste(needed_data$Date, needed_data$Time)
needed_data$DateandTime <- strptime(needed_data$DateandTime,
                            format = '%d/%m/%Y %H:%M:%S')


## convert character into numeric
needed_data$Global_active_power <- as.numeric(needed_data$Global_active_power)

t <- needed_data$DateandTime

##open png graphic device and plotting graph(plot1)
# png(filename='plot2.png', width = 480, height = 480)
plot(needed_data$DateandTime,
     needed_data$Global_active_power, 
     xlab = '',
     ylab = 'Global Active Power (kilowatts)',
     type = 'l',
     xaxt = 'n')
axis(side = 1, at=1:3)
# dev.off()