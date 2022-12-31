#Question 1

customer_internet_service <- customer$InternetService
as.data.frame(customer_internet_service) -> customer_internet_service
View(customer_internet_service)

customer_paperless_billing <- customer$PaperlessBilling
as.data.frame(customer_paperless_billing) -> customer_paperless_billing
View(customer_paperless_billing)

customer_streaming_TV <- customer$StreamingTV
as.data.frame(customer_streaming_TV) -> customer_streaming_TV
View(customer_streaming_TV)

#Question 2

customer_random_columns <- customer[,c(3,6,9)]
View(customer_random_columns)

#Question 3

customer_10_20 <- customer[,10:20]
View(customer_10_20)

#Question 4

customer_random_rows <- customer[c(65,765,3726,7000),]
View(customer_random_rows)

#Question 5

customer_continuous_rows <- customer[655:6550,]
View(customer_continuous_rows)

#Question 6

customer_random_data <- customer[c(10,100,1000),c(5,10,15)]
View(customer_random_data)
