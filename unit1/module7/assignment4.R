sample.split(citytemp$Region,SplitRatio =0.70 )->split_tag
subset(citytemp, split_tag==T) ->train
subset(citytemp, split_tag==T) ->test
tree(Region~AvgTemperature,data=train) -> mod_tree1


sample.split(customer$Churn,SplitRatio =0.80 )->split_tag
subset(customer, split_tag==T) ->train
subset(customer, split_tag==T) ->test
tree(Churn~MonthlyCharges,data=train) -> mod_tree2


sample.split(pharm$DrugID,SplitRatio =0.75 )->split_tag
subset(pharm, split_tag==T) ->train
subset(pharm, split_tag==T) ->test
tree(DrugID~Age,data=train) -> mod_tree3

