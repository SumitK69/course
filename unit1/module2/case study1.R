#Question 1

select(customer,5) -> customer_5
View(customer_5)

select(customer,15) -> customer_15
View(customer_15)

#Question 2

customer_3_multiple <- select(customer,3,6,9,12,15,18)
View(customer_3_multiple)

#Question 3

c_10_20 <- select(customer,10:20)
View(c_10_20)

#Question 4

customer_P <- select(customer,starts_with("P"))
View(customer_P)

#Question 5

customer_s <- select(customer,ends_with("s"))
View(customer_s)
