
hpc2 <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007")]

t<-strptime(hpc2$Time, format=" %H:%M:%S")
t<-as.vector(t)
hpc2 <- cbind(hpc2,t)
hpc2$Time <- hpc2$t  

hpc3<-hpc3[-10]


class(hpc3$Global_active_power)
hpc3$Global_active_power <-as.numeric(hpc3$Global_active_power)

png(file = "Plot1.png", width = 480, height=480)

hist(hpc3$Global_active_power, xlab="Global Active Power(kilowatts)",
     main="Global Active Power",col = "red")


dev.off()

