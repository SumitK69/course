#Question 1
read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv")->customer
str(customer$TotalCharges)

class(customer$TotalCharges)= "integer"
str(customer$TotalCharges)

#Question 2

read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") -> placement
str(placement)

#Question 3

read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Pharmacovigilance_audit_Data.csv") -> pharm
str(pharm)

#Question 4

read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/city_temperature.csv") -> citytemp
str(citytemp)
