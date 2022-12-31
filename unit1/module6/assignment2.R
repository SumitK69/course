#Question 1
sample.split(citytemp$Region, SplitRatio = 0.70) -> spilt_tag
subset(citytemp,split_tag==T) -> train
subset(citytemp,split_tag==F) -> test
glm(as.factor(Region)~AvgTemperature,data = train,family="binomial") -> log_mod1


#Question 2
str(customer$Churn)
sample.split(customer$Churn,SplitRatio = 0.80) -> spilt_tag
subset(customer,split_tag==T) -> train
subset(customer,split_tag==F) -> test
glm(as.factor(Churn)~MonthlyCharges,data = train,family="binomial") -> log_mod2


#Question 3
sample.split(pharm$DrugID, SplitRatio = 0.75) -> spilt_tag
subset(pharm,split_tag==T) -> train
subset(pharm,split_tag==F) -> test
glm(as.factor(DrugID)~Age, data = train,family="binomial") -> log_mod3