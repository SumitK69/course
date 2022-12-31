#Question 1
sample.split(customer$gender,SplitRatio = 0.65) -> split_tag
subset(customer,split_tag==T) ->train
subset(customer,split_tag==F) -> test
glm(as.factor(gender)~Dependents + InternetService + Contract,data = train,family = "binomial") -> result_log_multi
predict(result_log_multi,newdata = test,type = "response") -> prediction
range(prediction)
table(test$gender,prediction > 0.49)
acc <- (868+365)/(868+365+856+376)
acc

#Question 2
sample.split(customer$gender,SplitRatio = 0.65) -> split_tag
subset(customer,split_tag==T) ->train
subset(customer,split_tag==F) -> test
glm(as.factor(gender)~tenure + MonthlyCharges + PaymentMethod,data = train,family = "binomial") -> result_log_multi2
predict(result_log_multi2,newdata = test,type = "response") -> prediction2
range(prediction2)
table(test$gender,prediction2 > 0.49)
acc2 <- (152+1116)/(152+1116+128+1069)
acc2
