sample.split(citytemp$Region,SplitRatio = 0.65) -> split_tag
subset(citytemp,split_tag == T) -> train
subset(citytemp,split_tag == F) -> test
randomForest(Region~AvgTemperature,data=train,ntree=35) ->mod_forest1



sample.split(customer$Churn,SplitRatio = 0.65) -> split_tag
subset(customer,split_tag == T) -> train
subset(customer,split_tag == F) -> test
randomForest(Churn~MonthlyCharges,data=train,ntree=35) ->mod_forest2


sample.split(pharm$DrugID,SplitRatio = 0.65) -> split_tag
subset(pharm,split_tag == T) -> train
subset(pharm,split_tag == F) -> test
randomForest(DrugID~Age,data=train,ntree=35) ->mod_forest3
