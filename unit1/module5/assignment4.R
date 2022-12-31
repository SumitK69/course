#Question 1
sample.split(citytemp$Month, SplitRatio = 0.70) -> spilt_tag
subset(citytemp,split_tag==T) -> train
subset(citytemp,split_tag==F) -> test
lm(Month~Country+ Region + City + AvgTemperature,data=train) -> model1
summary(model1)$adj.r.squared
summary(model1)$fstatistic



#Question 2
sample.split(placement$etest_p,SplitRatio = 0.80) -> spilt_tag
subset(placement,split_tag==T) -> train
subset(placement,split_tag==F) -> test
lm(etest_p~mba_p+degree_p,data=train) -> model2
summary(model2)$adj.r.squared
summary(model2)$fstatistic



#Question 3
sample.split(pharm$Age, SplitRatio = 0.75) -> spilt_tag
subset(pharm,split_tag==T) -> train
subset(pharm,split_tag==F) -> test
lm(Age~Issues+DrugID+Gender,data=train) -> model3
summary(model3)$adj.r.squared
summary(model3)$fstatistic


