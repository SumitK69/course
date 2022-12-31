read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv") -> customer
View(customer)

array_total_charges <- c(customer$TotalCharges[0:10])
array_total_charges

array_monthly_charges <- c(customer$MonthlyCharges[0:5])
array_monthly_charges

#Question2
read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") ->placement
View(placement)

firstFifteen <- array(placement$salary[0:15])
firstFifteen

firstFive <- array(placement$mba_p[0:5])
firstFive

#there are no e_test column so i have used etest_p
firstTen <- array(placement$etest_p[0:10])
firstTen
