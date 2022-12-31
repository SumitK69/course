sample.split(citytemp$Region,SplitRatio = 0.65) -> split_tag
subset(citytemp,split_tag == T) -> train
subset(citytemp,split_tag == F) -> test
randomForest(Region~Country+City+AvgTemperature,data=train,ntree=35) ->mod_forest1
varImpPlot(mod_forest1)
predict(mod_forest1,newdata = test,type = "class") -> result_forest1
result_forest1[1:10]
table(test$Region,result_forest1)


sample.split(customer$gender,SplitRatio = 0.65) -> split_tag
subset(customer,split_tag == T) -> train
subset(customer,split_tag == F) -> test
randomForest(gender~MonthlyCharges+tenure,data=train,ntree=35) ->mod_forest2
varImpPlot(mod_forest2)
predict(mod_forest2,newdata = test,type = "class") -> result_forest2
result_forest2[1:10]
table(test$gender,result_forest2)



sample.split(pharm$DrugID,SplitRatio = 0.65) -> split_tag
subset(pharm,split_tag == T) -> train
subset(pharm,split_tag == F) -> test
randomForest(DrugID~.,data=train,ntree=35) ->mod_forest3
varImpPlot(mod_forest3)
predict(mod_forest3,newdata = test,type = "class") -> result_forest3
result_forest3[1:10]
table(test$DrugID,result_forest3)
