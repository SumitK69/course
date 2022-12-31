#Question 1
customer_333 <- sample_n(customer,333)
View(customer_333)

#Question 2
customer1000 <- sample_n(customer,1000)
View(customer1000)

#Question 3
customer_23_percent <- sample_frac(customer,0.23)
customer_23_percent

#Question 4
count(customer,PaymentMethod)

#Question 5
count(customer,Churn)
