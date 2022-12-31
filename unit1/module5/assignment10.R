#Question 1
sample.split(citytemp$Month, SplitRatio = 0.70) -> spilt_tag
subset(citytemp,split_tag==T) -> train
subset(citytemp,split_tag==F) -> test
lm(Month~AvgTemperature,data=train) -> model1
predict(model1,newdata= test) -> predictedvalues
cbind(Actual = test$Month,Predicted = predictedvalues) -> finaldata
finaldata <- as.data.frame(finaldata)
error <- finaldata$Actual - finaldata$Predicted
cbind(finaldata,error) -> result1
View(result1)
rmse1 <- sqrt(mean(result1$error^2))
rmse1


#Question 2
sample.split(placement$etest_p,SplitRatio = 0.80) -> spilt_tag
subset(placement,split_tag==T) -> train
subset(placement,split_tag==F) -> test
lm(etest_p~mba_p,data=train) -> model2
predict(model2,newdata= test) -> predictedvalues
cbind(Actual = test$etest_p,Predicted = predictedvalues) -> finaldata
finaldata <- as.data.frame(finaldata)
error <- finaldata$Actual - finaldata$Predicted
cbind(finaldata,error) -> result2
View(result2)

rmse2 <- sqrt(mean(na.omit(result2)$error^2))
rmse2


#Question 3
sample.split(pharm$Age, SplitRatio = 0.75) -> spilt_tag
subset(pharm,split_tag==T) -> train
subset(pharm,split_tag==F) -> test
lm(Age~Issues+DrugID,data=train) -> model3
predict(model3,newdata= test) -> predictedvalues
cbind(Actual = test$Age,Predicted = predictedvalues) -> finaldata
finaldata <- as.data.frame(finaldata)
error <- finaldata$Actual - finaldata$Predicted
cbind(finaldata,error) -> result3
View(result3)
sum(is.na(multiresult3))
rmse3 <- sqrt(mean(na.omit(result3)$error^2))
rmse3
