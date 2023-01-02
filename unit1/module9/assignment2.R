customer %>% select(tenure,MonthlyCharges,TotalCharges) -> customer_features
View(customer_features)

kmeans(customer_features$MonthlyCharges,3) -> k_group
cbind(monthlycharges = customer_features$MonthlyCharges,clusters=k_group$cluster) -> grouped
View(grouped)


