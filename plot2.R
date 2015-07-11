a=read.table("household_power_consumption.txt",header=T,sep=";",stringsAsFactors=F)
a$Date=as.Date(a$Date,"%d/%m/%Y")
b=a[which(a$Date=="2007-02-01" |a$Date=="2007-02-02" ),]
d=as.POSIXlt(paste(b$Date,b$Time,sep=" "))
c=as.numeric(b$Global_active_power)
plot(d,c,type="l",ylab="Global Active Power(kilowatts)",xlab="")
dev.copy(png,"plot2.png")
dev.off()
