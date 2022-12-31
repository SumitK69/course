sample.split(customer$MonthlyCharges,SplitRatio = 0.65) -> split_tag

View(customer)

subset(customer,split_tag==T) -> train
subset(customer,split_tag==F) -> test

lm(MonthlyCharges~tenure,data=train) -> model1
predict(model1,newdata= test) -> predictedvalues
cbind(Actual = test$MonthlyCharges,Predicted = predictedvalues) -> finaldata
View(finaldata)

class(finaldata)
as.data.frame(finaldata) -> finaldata
class(finaldata)

finaldata$Actual - finaldata$Predicted ->error
cbind(finaldata,error) -> finaldata
View(finaldata)

sqrt(mean(finaldata$error^2))

