#Question 1
read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") ->placement_data
View(placement_data)

switch (placement_data$hsc_s[67],
  "Science" = placement_data$degree_p[67] + 5, 
  "Commerce" = placement_data$degree_p[67] + 3
) -> placement_data$degree_p[67]

#Question 2
switch (placement_data$ssc_b[74],
  "Others" = placement_data$hsc_p[74] + 3,
  "Central" = placement_data$hsc_p[74] + 5 
) -> placement_data$hsc_p[74]



read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv") -> customer 
View(customer)

#Question 3

switch (customer$Contract[4],
  "One year" = customer$TotalCharges[4] * 0.8,
  "Month-to-month" = customer$TotalCharges[4] * 0.95
) -> customer$TotalCharges[4]

#QUestion 4

customer$InternetService[14]
customer$TotalCharges[14]
switch (customer$InternetService[14],
  "Fiber optic" = customer$TotalCharges[14]*0.85,
  "DSL" = customer$TotalCharges[14]*0.90
)->customer$TotalCharges[14]
customer$TotalCharges[14]
View(customer)
