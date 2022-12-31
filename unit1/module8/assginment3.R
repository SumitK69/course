sample.split(citytemp$Region,SplitRatio = 0.65) -> split_tag
subset(citytemp,split_tag == T) -> train
subset(citytemp,split_tag == F) -> test
randomForest(Region~AvgTemperature+Day+Month+Year,data=train,ntree=35) ->mod_forest1
importance(mod_forest1)


sample.split(customer$gender,SplitRatio = 0.65) -> split_tag
subset(customer,split_tag == T) -> train
subset(customer,split_tag == F) -> test
randomForest(gender~MonthlyCharges+tenure+TotalCharges+StreamingTV,data=train,ntree=35) ->mod_forest2
importance(mod_forest2)


sample.split(pharm$DrugID,SplitRatio = 0.65) -> split_tag
subset(pharm,split_tag == T) -> train
subset(pharm,split_tag == F) -> test
randomForest(DrugID~Gender+Age+PatientID,data=train,ntree=35) ->mod_forest3
importance(mod_forest3)
