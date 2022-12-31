sample.split(citytemp$Region,SplitRatio =0.70 )->split_tag
subset(citytemp, split_tag==T) ->train
subset(citytemp, split_tag==T) ->test
tree(Region~AvgTemperature,data=train) -> mod_tree1
plot(mod_tree1)
text(mod_tree1)
predict(mod_tree1,newdata = test,type = "class") -> result_tree1
cbind(actual=test$Region,predicted=result_tree1) -> finaldata1
finaldata1<- as.data.frame(finaldata1)
head(finaldata1$predicted,10)
table(test$Region,result_tree1)


sample.split(customer$Churn,SplitRatio =0.80 )->split_tag
subset(customer, split_tag==T) ->train
subset(customer, split_tag==T) ->test
tree(Churn~MonthlyCharges,data=train) -> mod_tree2
plot(mod_tree2)
text(mod_tree2)
predict(mod_tree2,newdata = test,type = "class") -> result_tree2
cbind(actual = test$Churn,predicted = result_tree2) -> finaldata2
finaldata2<-as.data.frame(finaldata2)
head(finaldata2$predicted,10)
table(test$Churn,result_tree2)


sample.split(pharm$DrugID,SplitRatio =0.75 )->split_tag
subset(pharm, split_tag==T) ->train
subset(pharm, split_tag==T) ->test
tree(DrugID~Age,data=train) -> mod_tree3
plot(mod_tree3)
text(mod_tree3)
predict(mod_tree3,newdata = test,type = "class") -> result_tree3
cbind(actual=test$DrugID,predicted=result_tree3) -> finaldata3
finaldata3 <- as.data.frame(finaldata3)
head(finaldata3$predicted,10)
table(test$DrugID,result_tree3)

