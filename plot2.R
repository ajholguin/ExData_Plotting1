
# read data
setwd('C:/Users/Andrew/OneDrive/Documents/Coursera/4_exdata/proj1')
dat <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt",
                  header = TRUE,
                  colClasses = c('character','character',rep('numeric',7)),
                  sep = ';',
                  na.strings = '?')

# get subset of data
dat_sub <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]

# create datetime field
dat_sub$datetime <- strptime(paste(dat_sub$Date, dat_sub$Time), format='%d/%m/%Y %H:%M:%S')

# create the plot ----------------------------------------------
png('plot2.png', height = 480, width = 480)

plot(dat_sub$datetime,
     dat_sub$Global_active_power,
     xlab = NA,
     ylab = 'Global Active Power (kilowatts)',
     type = 'l')

dev.off()

