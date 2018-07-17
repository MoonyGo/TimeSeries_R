#Simulating AR(1) data and finding a model

data=arima.sim(list(order=c(1,0,0),ar=.4),n=500)
plot(data, ylab="x", main=(expression(AR(1)~~~~phi==+.9)))
acf(data,48 )

#ACF and PACF
acf2(data, 48)