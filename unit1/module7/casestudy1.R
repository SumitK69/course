#Question 1
sample.split(customer$Dependents,SplitRatio = 0.70) -> split_tag
subset(customer,split_tag == T) -> train
subset(customer,split_tag == F) -> test
tree(Dependents~Partner,data = train) -> mod_tree1
plot(mod_tree1)
text(mod_tree1)
predict(mod_tree1,newdata = test,type = "class") -> result_tree1
View(result_tree1)
table(test$Dependents,result_tree1)
acc <- (989+536)/(989+536+97+491)
acc

#Question 2
sample.split(customer$Dependents,SplitRatio = 0.70) -> split_tag
subset(customer,split_tag == T) -> train
subset(customer,split_tag == F) -> test
tree(Dependents~Partner+InternetService,data = train) -> mod_tree2
plot(mod_tree2)
text(mod_tree2)
predict(mod_tree2,newdata = test,type = "class") -> result_tree2
table(test$Dependents,result_tree2)
acc <- (1258+351)/(1258+351+222+282)
acc


