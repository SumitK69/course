read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") ->placement_data
View(placement_data)

#Question a

student95 <- placement_data$status[95]

if(student95 == "Placed"){
  print("the student is placed from campus placement drives")
}else if(student95 == "Not Placed"){
  print("the student is not placed from campus placement drives")
}else{
  print("the data of the student is not available")
}

#Question b

hsc64 <- placement_data$hsc_s[64]

if(hsc64 == "Science"){
  print("the subject opted by the student is Science")
}else if(hsc64 == "Commerce"){
  print("the subject opted by the student is Commerce")
}else if (hsc64 == "Arts"){
  print("the subject opted by the student is arts")
}

#Question c

read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv") -> customer 
View(customer)

payment28 <- customer$PaymentMethod[28]

if(payment28 == "Credit card (automatic)"){
  print("The customer is using credit card as their payment method")
}else if(payment28 == "Mailed check"){
  print("The customer is using mailed check as their payment method")
}else if (payment28 == "Electronic check"){
  print("The customer is using Electronic check as their payment method")
}

