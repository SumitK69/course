sample.split(citytemp$Region,SplitRatio =0.70 )->split_tag
subset(citytemp, split_tag==T) ->train
subset(citytemp, split_tag==T) ->test



sample.split(customer$Churn,SplitRatio =0.80 )->split_tag
subset(customer, split_tag==T) ->train
subset(customer, split_tag==T) ->test

sample.split(pharm$DrugID,SplitRatio =0.75 )->split_tag
subset(pharm, split_tag==T) ->train
subset(pharm, split_tag==T) ->test
