AirPassengers
class(AirPassengers)

plot(AirPassengers)

acf(AirPassengers)

acf(diff(log(AirPassengers)))

pacf(diff(log(AirPassengers)))

arima(log(AirPassengers),c(0,1,1),season= list(order=c(0,1,0),period=12)) -> mod_time

predict(mod_time,20*12) -> pred_time
pred_time
pred_time <- 2.718 ^pred_time$pred
pred_time

ts.plot(AirPassengers,pred_time,log="y",lty=c(1,3))
