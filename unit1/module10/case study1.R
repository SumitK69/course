data("Groceries")
summary(Groceries)
apriori(Groceries,parameter = list(support=0.05,confidence=0.3)) ->rule1
inspect(head(rule1))
plot(rule1,method = "grouped")



data("Groceries")
summary(Groceries)
apriori(Groceries,parameter = list(support=0.003,confidence=0.7)) ->rule2
inspect(head(rule2))
plot(rule2,method="grouped")
