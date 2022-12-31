#Question 1
read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") ->placement_data
View(placement_data)

boardcount = 0
i=1

while (i<=nrow(placement_data)){
  if(placement_data$hsc_b[i] == "Central"){
    boardcount = boardcount + 1
  }
  i= i+1
}
boardcount

#Question 2

i = 1
streamcount = 0
while(i<= nrow(placement_data)){
  if(placement_data$hsc_s[i] == "Science" & placement_data$hsc_p[i] > 75){
    streamcount = streamcount + 1
  }
  i = i + 1
}
streamcount

#Question 3

read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv") -> customer 
View(customer)

#Question i

customercount1 = 0
i = 1
while (i<=nrow(customer)) {
  if(customer$SeniorCitizen[i]==1 & customer$Contract[i]=="One year" & customer$InternetService[i]=="Fiber optic"){
    customercount1 = customercount1 + 1
  }
  i=i+1
}
customercount1

#Question ii

customercount2 = 0
i = 1
while (i<=nrow(customer)) {
  if(customer$SeniorCitizen[i]== 0 & customer$Contract[i]=="Two year" & customer$TotalCharges[i] <= 7000){
    customercount2 = customercount2 + 1
  }
  i=i+1
}
customercount2

#Question iii

customercount3 = 0
i = 1
while (i<=nrow(customer)) {
  if(customer$MonthlyCharges[i]>6500){
    customercount3 = customercount3 + 1
  }
  i=i+1
}
customercount3

