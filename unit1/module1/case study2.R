read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv") -> customer
View(customer)

#Question 1

customer$MonthlyCharges[5] <- customer$MonthlyCharges[5] + 5

customer$MonthlyCharges[6] <- customer$MonthlyCharges[6] - 9.65

customer$MonthlyCharges[1] <- customer$MonthlyCharges[5] * 3

customer$MonthlyCharges[37] <- customer$MonthlyCharges[5] / 3

#Question 2

customer$tenure[1]>customer$tenure[10]

customer$tenure[3]==customer$tenure[5]

#Question 3

#Question a
count=0
for(i in 1:nrow(customer)){
  if(customer$TechSupport[i] == "Yes" & customer$StreamingTV[i] == "Yes"){
    count = count + 1
  }
}
count

#Question b

condition <- customer$InternetService=="DSL" | customer$InternetService == "Fiber optic" 
subset(customer,condition==T) -> internet_dsl_fiber
View(internet_dsl_fiber)
