#Question 1
ggplot(data=customer,aes(x=PhoneService)) + geom_bar(fill = "pink",col = "peru")

#Question 2
abc <- customer$InternetService 
class(abc)
ggplot(data = customer,aes(x=InternetService,fill=InternetService)) + geom_bar(position = "identity")

#ggplot(data = customer,aes(x=InternetService,fill=Contract)) + geom_bar(position = "identity")

#Question 3
ggplot(data=customer,aes(x=TechSupport,fill=Churn)) + geom_bar()
