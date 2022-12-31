#Question 1
sqldf("select OnlineBackup from customer") -> customer_online_backup
View(customer_online_backup)

#Question 2
sqldf("select StreamingTV,StreamingMovies,Contract from customer") -> customer_streaming_contract
View(customer_streaming_contract)

#Question 3
sqldf("select * from customer where PaymentMethod = 'Mailed check'") -> customer_mail
View(customer_mail)

#Question 4
sqldf("select * from customer where gender='Female' and tenure = 1 and PaymentMethod = 'Mailed check' ") ->customer_random_selection
View(customer_random_selection)
