sample.split(customer$gender,SplitRatio = 0.65) -> split_tag
subset(customer,split_tag == T) -> train
subset(customer,split_tag == F) -> test
randomForest(gender~MonthlyCharges+tenure,data=train,ntree=35) ->mod_forest1
importance(mod_forest1)
varImpPlot(mod_forest1)
predict(mod_forest1,newdata = test,type = "class") -> result_forest1
table(test$gender,result_forest1)
acc <- (552+661)/nrow(test)
acc

sample.split(customer$gender,SplitRatio = 0.65) -> split_tag
subset(customer,split_tag == T) -> train
subset(customer,split_tag == F) -> test
randomForest(gender~MonthlyCharges+tenure,data=train,ntree=350) ->mod_forest2
importance(mod_forest2)
varImpPlot(mod_forest2)
predict(mod_forest1,newdata = test,type = "class") -> result_forest2
table(test$gender,result_forest2)
acc <- (860+947)/nrow(test)
acc
