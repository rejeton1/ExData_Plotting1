##load needed packages
library(stats)
library(base)
library(dplyr)

## read entire data and extract only needed data
data <- read.csv('household_power_consumption.txt', sep = ';')
needed_data <- filter(data, (Date == '1/2/2007'|Date =='2/2/2007'))

## convert character into numeric
needed_data$Global_active_power <- as.numeric(needed_data$Global_active_power)

##open png graphic device and plotting graph(plot1)
png(filename='plot1.png', width = 480, height = 480)
hist(needed_data$Global_active_power, col = 'red', 
     xlab = 'Global Active Power (kilowatts)', 
     main = 'Global Active Power')
dev.off()