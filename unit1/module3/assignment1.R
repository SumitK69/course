#Question 1
ggplot(data=customer,aes(x=PhoneService)) +geom_bar()

#Question 2
ggplot(data=customer,aes(x=gender)) +geom_bar()

#Question 3
ggplot(data=customer,aes(x=InternetService,fill=MonthlyCharges)) +geom_bar()

#Question 4
ggplot(data=customer,aes(x=MonthlyCharges,fill=SeniorCitizen)) +geom_bar()

#Question 5
ggplot(data=customer,aes(x=TotalCharges,fill=tenure)) +geom_bar()


#Question 6
ggplot(data=customer,aes(x=StreamingTV,fill=SeniorCitizen)) +geom_bar()

#Question 7
ggplot(data=customer,aes(x=Dependents,fill=Partner)) +geom_bar()

#Question 1
