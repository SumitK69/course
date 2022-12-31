#Question 1

head(customer$PhoneService,4)

head(customer$Contract,8)

#Question 2

tail(customer$TotalCharges,1)

tail(customer$tenure,5)

#Question 3

tenure <- customer$tenure

mean(tenure)
min(tenure)
max(tenure)
range(tenure)

#Question 4

sample(customer$TotalCharges,10)

#Question 5

table(customer$PaymentMethod)

table(customer$Contract)
