customer %>% select(tenure,MonthlyCharges,TotalCharges) -> customer_features
sum(is.na(customer_features))

kmeans(customer_features,3) -> kmean_algo
