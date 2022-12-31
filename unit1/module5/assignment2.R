#Question 1
sample.split(citytemp$Month, SplitRatio = 0.70) -> spilt_tag
subset(citytemp,split_tag==T) -> train
subset(citytemp,split_tag==F) -> test

#Question 2
sample.split(placement$etest_p,SplitRatio = 0.80) -> spilt_tag
subset(placement,split_tag==T) -> train
subset(placement,split_tag==F) -> test

#Question 3
sample.split(pharm$Age, SplitRatio = 0.75) -> spilt_tag
subset(pharm,split_tag==T) -> train
subset(pharm,split_tag==F) -> test