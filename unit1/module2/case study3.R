#Question 1
summarise(customer,median_tenure=median(tenure),variance_tenure=var(tenure),sd_tenure=sd(tenure))

#Question 2
summarise(customer,median_tenure=median(MonthlyCharges),variance_tenure=var(MonthlyCharges),sd_tenure=sd(MonthlyCharges))

#Question 3
summarise(group_by(customer,PaymentMethod),sd_tenure=sd(tenure))

#Question 4
summarise(group_by(customer,Contract),median_mc=median(MonthlyCharges))

#Question 5
summarise(group_by(customer,InternetService),var_tc=var(TotalCharges,na.rm = T))

