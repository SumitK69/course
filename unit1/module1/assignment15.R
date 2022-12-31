read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv") -> customer
View(customer)

table(customer$gender)

table(customer$SeniorCitizen)

table(customer$Partner)

table(ncol(customer))

table(customer$Dependents)

table(customer$PhoneService)

table(customer$MultipleLines)

table(customer$InternetService)

table(customer$OnlineSecurity)

table(customer$OnlineBackup)

table(customer$Contract)

table(customer$PaymentMethod)

extract <- customer$gender=="Male" & customer$SeniorCitizen==1 & customer$Partner=="Yes" & customer$InternetService=="DSL" & customer$PhoneService=="Yes"
subset(customer,extract==T)->extracted
View(extracted)
