sample.split(citytemp$Region,SplitRatio =0.70 )->split_tag
subset(citytemp, split_tag==T) ->train
subset(citytemp, split_tag==T) ->test
tree(Region~AvgTemperature,data=train) -> mod_tree1
predict(mod_tree1,newdata = test,type = "class") -> result_tree1
table(test$Region,result_tree1)
misclasserror1 <- (50180+59510+42035+98761+4630+1027+33260+23281+4978+5991+9772+14483)/(nrow(test))
misclasserror1


sample.split(customer$Churn,SplitRatio =0.80 )->split_tag
subset(customer, split_tag==T) ->train
subset(customer, split_tag==T) ->test
tree(Churn~MonthlyCharges,data=train) -> mod_tree2
predict(mod_tree2,newdata = test,type = "class") -> result_tree2
table(test$Churn,result_tree2)
misclasserror2 <- (1495)/nrow(test)
misclasserror2

sample.split(pharm$DrugID,SplitRatio =0.75 )->split_tag
subset(pharm, split_tag==T) ->train
subset(pharm, split_tag==T) ->test
tree(DrugID~Age,data=train) -> mod_tree3
predict(mod_tree3,newdata = test,type = "class") -> result_tree3
table(test$DrugID,result_tree3)
misclasserror3 <- (514+109)/nrow(test)
misclasserror3
