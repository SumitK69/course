#Question 1
ggplot(data=customer,aes(x=tenure)) + geom_histogram(bins = 100, fill = "mediumspringgreen",col="azure")

#Question 2
ggplot(data=customer,aes(x=MonthlyCharges,fill=PaymentMethod)) + geom_histogram()

ggplot(data=customer,aes(x=MonthlyCharges,fill=OnlineBackup)) + geom_histogram()

#Question 3

ggplot(data=customer,aes(x=TotalCharges,fill=gender)) + geom_histogram()

ggplot(data=customer,aes(x=TotalCharges,fill=InternetService)) + geom_histogram()

