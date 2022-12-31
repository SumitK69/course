#Question 1
ggplot(data=pharm,aes(x=LocationID,fill=Issues)) + geom_bar() + ggtitle("Location ID plot")

#Question 2
ggplot(data=pharm,aes(x=DrugID)) + geom_bar(fill="orange",col="peru") + ggtitle("drug ID plot")
  
#Question 3
ggplot(data=pharm,aes(x=Gender,fill=DrugID)) + geom_bar() + ggtitle("gender plot")

ggplot(data=pharm) + geom_bar(aes(x=Gender,fill=DrugID),position="identity")+ggnewscale::new_scale_fill() +geom_bar(aes(x=Gender,fill=Issues),position="identity")+  ggtitle("gender plot")
