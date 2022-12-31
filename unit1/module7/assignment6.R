sample.split(citytemp$Region,SplitRatio =0.70 )->split_tag
subset(citytemp, split_tag==T) ->train
subset(citytemp, split_tag==T) ->test
tree(Region~AvgTemperature,data=train) -> model1
predict(model1,newdata = test,type = "class") -> result_tree1
table(test$Region,result_tree1)
acc1 <- (68289+80497+238188)/(nrow(test)) 
acc1


sample.split(customer$Churn,SplitRatio =0.80 )->split_tag
subset(customer, split_tag==T) ->train
subset(customer, split_tag==T) ->test
tree(Churn~MonthlyCharges,data=train) -> model2
predict(mod_tree2,newdata = test,type = "class") -> result_tree2
table(test$Churn,result_tree2)
acc2<-(4139)/(4139+1495)
acc2

sample.split(pharm$DrugID,SplitRatio =0.75 )->split_tag
subset(pharm, split_tag==T) ->train
subset(pharm, split_tag==T) ->test
tree(DrugID~Age,data=train) -> model3
predict(model3,newdata = test,type = "class") -> result_tree3
table(test$DrugID,result_tree3)
acc3 <- 1028/nrow(test)
acc3
