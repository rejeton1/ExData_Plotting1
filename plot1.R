library(dplyr)
library(stats)
library(base)
data <- read.csv('household_power_consumption.txt', sep = ';')
needed_data <- filter(data, (Date == '1/2/2007'|Date =='2/2/2007'))
head(needed_data)

needed_data[,1] <- as.Date(needed_data[,1], '%d/%m/%Y')
# needed_data[,2] <- strptime(needed_data[,2], '%H:%M:%S')