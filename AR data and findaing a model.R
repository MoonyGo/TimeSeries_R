#Simulating AR data and finding a model

data1=arima.sim(list(order=c(1,0,0),ar=.4),n=500)
plot(data1, ylab="x", main=(expression(AR(1)~~~~phi==+.9)))
acf(data1,48)

#ACF and PACF
acf2(data, 48)

#Simulating MA data and finding a model
par(mfrow=c(2,1))
data2<-arima.sim(list(order=c(0,0,1),ma=.5), n=100)
plot(data2,ylab = "x", main=(expression(MA(1)~~~thetha==+.5)))
acf(data2, 48, main="MA(1)~~~theta==+.5")
acf2(data2,48)

