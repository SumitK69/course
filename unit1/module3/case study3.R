#Question 1
ggplot(data=customer,aes(x=tenure,y=TotalCharges)) + geom_point(col="wheat3")

ggplot(data=customer,aes(x=tenure,y=TotalCharges,col=PaymentMethod)) + geom_point()

ggplot(data=customer,aes(x=tenure,y=TotalCharges,col=gender)) + geom_point()

ggplot(data=customer,aes(x=tenure,y=TotalCharges,col=Dependents,shape=Dependents)) + geom_point()

#Question 2

ggplot(data=customer,aes(x=tenure,y=MonthlyCharges)) + geom_point(col="yellowgreen")

ggplot(data=customer,aes(x=tenure,y=MonthlyCharges,col=InternetService)) + geom_point()

ggplot(data=customer,aes(x=tenure,y=MonthlyCharges,col=Contract)) + geom_point()
