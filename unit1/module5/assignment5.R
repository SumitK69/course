#Question 1
sample.split(citytemp$AvgTemperature, SplitRatio = 0.70) -> spilt_tag
subset(citytemp,split_tag==T) -> train
subset(citytemp,split_tag==F) -> test
lm(AvgTemperature~City ,data=train) -> model1
predict(model1,newdata= test) -> predictedvalues
cbind(Actual = citytemp$AvgTemperature,Predicted = predictedvalues) -> finaldata
finaldata <- as.data.frame(finaldata)
error <- finaldata$Actual - finaldata$Predicted
cbind(finaldata,error) -> finaldata
View(finaldata)
View(citytemp)

#Question 2
sample.split(placement$etest_p,SplitRatio = 0.80) -> spilt_tag
subset(placement,split_tag==T) -> train
subset(placement,split_tag==F) -> test
lm(etest_p~degree_p,data=train) -> model2
predict(model2,newdata= test) -> predictedvalues
cbind(Actual = test$etest_p,Predicted = predictedvalues) -> finaldata
finaldata <- as.data.frame(finaldata)
error <- finaldata$Actual - finaldata$Predicted
cbind(finaldata,error) -> finaldata
View(finaldata)

#Question 3
sample.split(pharm$Age, SplitRatio = 0.75) -> spilt_tag
subset(pharm,split_tag==T) -> train
subset(pharm,split_tag==F) -> test
lm(Age~Issues data=train) -> model3
predict(model3,newdata= test) -> predictedvalues
cbind(Actual = test$Age,Predicted = predictedvalues) -> finaldata
finaldata <- as.data.frame(finaldata)
error <- finaldata$Actual - finaldata$Predicted
cbind(finaldata,error) -> finaldata
View(finaldata)
