class(hpc3$Global_active_power)
class(hpc3$Date)

hpc3$Global_active_power <-as.numeric(hpc3$Global_active_power)
hpc2$Date <- as.Date(hpc2$Date,"%d/%m/%y")
class(hpc$Date)
a=weekdays(hpc$Date)
hpc3<-cbind(hpc3,a)


png(file = "Plot2.png", width = 480, height=480)


plot(hpc3$a, hpc3$Global_active_power,
     type="l",
     xlab=" ",
     ylab="Global Active Power(kilowatts)")

dev.off()

#I don't understand Why I cant get the right image but please look at my code and 
#tell me if possible. I get the same result whether I add type="I" or not. 
#as it turns out because of the / in the dates my conversion doesn't work
