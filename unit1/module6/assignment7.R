#Question 1
sample.split(citytemp$Region, SplitRatio = 0.70) -> spilt_tag
subset(citytemp,split_tag==T) -> train
subset(citytemp,split_tag==F) -> test
glm(as.factor(Region)~AvgTemperature+Day+Month+Year,data = train,family="binomial") -> log_mod1
predict(log_mod1,newdata = test,type = "response")-> predict_log1
cbind(actual=test$Region,predicted=predict_log1)-> result1
range(predict_log1)
table(test$Region,predict_log1>0.745)
acc1 <- (66183 + 91848 + 16558 + 110660 + 12332) / (66183 + 91848 + 16558 + 110660 + 12332+9156+3152+122+3942+631)
acc1

#Question 2
sample.split(customer$Churn,SplitRatio = 0.80) -> spilt_tag
subset(customer,split_tag==T) -> train
subset(customer,split_tag==F) -> test
glm(as.factor(Churn)~StreamingTV+MonthlyCharges+TotalCharges,data = train,family="binomial") -> log_mod2
predict(log_mod2,newdata=test,type="response") -> predict_log2
cbind(actual=test$Churn,predicted=predict_log2)-> result2
range(na.omit(predict_log2))
table(test$Churn,predict_log2>0.69)
acc2 <- (1543+57)/(1543+57+10+500)
acc2


#Question 3
sample.split(pharm$DrugID, SplitRatio = 0.75) -> spilt_tag
subset(pharm,split_tag==T) -> train
subset(pharm,split_tag==F) -> test
glm(as.factor(DrugID)~Gender+Age+PatientID, data = train,family="binomial") -> log_mod3
predict(log_mod3,newdata=test,type="response") -> predict_log3
cbind(actual=test$DrugID,predicted=predict_log3)-> result3
range(na.omit(predict_log3))
table(test$DrugID,predict_log3>0.45)
acc3 <- (51+44+10)/(51+44+10+365+183+34)
acc3
