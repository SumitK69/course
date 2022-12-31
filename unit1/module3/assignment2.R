#Question 1
ggplot(data=pharm,aes(x=Age)) + geom_histogram(bins = 100 ,fill="white",col="azure")

#Question 2
ggplot(data=pharm,aes(x=PatientID)) + geom_histogram(bins = 50 ,fill="black",col="wheat3")

#Question 3
ggplot(data=customer,aes(x=MonthlyCharges)) + geom_histogram(bins = 80 ,fill="white",col="violet")

#Question 4
ggplot(data=customer,aes(x=tenure)) + geom_histogram(bins = 50 ,fill="black",col="white")



