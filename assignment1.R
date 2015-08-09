
setwd('C:/Users/Andrew/OneDrive/Documents/Coursera/4_exdata/proj1')

dat <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt",
                  header = TRUE,
                  colClasse = c('character','character',rep('numeric',7)),
                  sep = ';',
                  na.strings = '?')

dat$Date <- as.Date()
dat_sub <- dat[dat$Date %in% c("01/02/2007","02/02/2007"),]

readLines("./exdata-data-household_power_consumption/household_power_consumption.txt", 5)
