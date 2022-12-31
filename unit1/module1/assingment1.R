read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv") -> customer

View(customer)

customer$MonthlyCharges[1] + 5 -> customer$MonthlyCharges[1]

customer$MonthlyCharges[5] + 22 -> customer$MonthlyCharges[5]

customer$TotalCharges[4] - 40.75 -> customer$TotalCharges[4]

customer$TotalCharges[2] - 100 -> customer$TotalCharges[2]

(customer$MonthlyCharges[25] - 4.6) / 5  -> customer$MonthlyCharges[25]

(customer$TotalCharges[5] + 5.3) * 2 -> customer$TotalCharges[5]

customer$MonthlyCharges[12] * 5 -> customer$MonthlyCharges[12]

