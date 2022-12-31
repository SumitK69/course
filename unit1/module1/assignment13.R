read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv") -> customer
View(customer)

#Question 1
subset(customer,customer$SeniorCitizen == 1 & customer$gender=="Female")-> a
View(a)

subset(customer,customer$gender == "Female" & customer$Partner=="No") -> b
View(b)

subset(customer,customer$InternetService=="DSL" & customer$OnlineSecurity=="No") ->c
View(c)

subset(customer,customer$InternetService=="Fiber optic" & customer$OnlineBackup=="No") ->d
View(d)

subset(customer,customer$SeniorCitizen==1 & customer$PaymentMethod=="Electronic check") ->e
View(e)

#Question 2

subset(customer,customer$PaymentMethod=="Mailed check" & customer$Contract=="One year") ->a
View(a)

enabled <- customer$OnlineSecurity=="Yes" & customer$OnlineBackup=="Yes"& customer$DeviceProtection=="Yes"&customer$TechSupport=="Yes"
subset(customer,enabled==T)->b
View(b)

subset(customer,customer$SeniorCitizen==0 & customer$tenure == 72) ->c
View(c)

# Question 3

subset(customer,customer$PaymentMethod=="Bank transfer (automatic)" | customer$PaymentMethod=="Credit card (automatic)") -> a
View(a)

subset(customer,customer$PhoneService=="Yes" | customer$MultipleLines=="Yes") ->b
View(b)

subset(customer,customer$PaymentMethod=="Mailed check" | customer$PaymentMethod=="Electronic check") -> c
View(c)

subset(customer,customer$InternetService=="Fiber optic" | customer$InternetService=="No") -> d
View(d)
