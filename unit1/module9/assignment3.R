customer %>% select(tenure,MonthlyCharges,TotalCharges) -> customer_features
sum(is.na(customer_features))
View(customer_features)