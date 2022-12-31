read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") ->placement_data
View(placement_data)

#Question 1 
statuscount = 0
for (i in 1:nrow(placement_data)){
  if(placement_data$status[i] == "Placed"){
    statuscount = statuscount + 1
  }
}
statuscount

streamcount = 0
for (i in 1:nrow(placement_data)){
  if(placement_data$hsc_s[i] == "Science"){
    streamcount = streamcount + 1
  }
}
streamcount

streamcount1 = 0
for (i in 1:nrow(placement_data)){
  if(placement_data$hsc_s[i] == "Commerce"){
    streamcount1 = streamcount1 + 1
  }
}
streamcount1
nrow(placement_data)

#Question 2

hsc = 0
for(i in 1:nrow(placement_data)){
  if(placement_data$hsc_p[i] > 80){
    hsc = hsc + 1
  }
}
hsc

#Question 3
mba = 0 
for(i in 1:nrow(placement_data)){
  if(placement_data$mba_p[i] > 75 & placement_data$status[i] == "Placed"){
    mba = mba + 1
  }
}
mba

#Question 4
read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv") -> customer 
View(customer)

DSLCount = 0
for(i in 1:nrow(customer)){
  if(customer$InternetService[i] == "DSL"){
    DSLCount = DSLCount + 1
  }
}
DSLCount
