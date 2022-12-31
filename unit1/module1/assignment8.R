#Question 1
read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") ->placement_data
View(placement_data)

if(placement_data$degree_t[12] == "Comm&Mgmt"){
  print("the student is of the stream commerce and management")
}

if(placement_data$specialisation[23] == "Mkt&HR"){
  print("the specialisation of student is marketing and human resource")
}

if(placement_data$status[39] == "Placed"){
  print("the student is placed from campus")
}

#Question 2
read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Pharmacovigilance_audit_Data.csv") -> pharm
View(pharm)

if(pharm$Issues[37] == "Medication history documenting error"){
  print("the patient's medical record is missing")
}

if(pharm$Issues[180] == "unclear route"){
  print("the patient is having an unclear route of transmission.")
}
if(pharm$LocationID[220] == "Location3"){
  print("the location ID of patient is location 3")
}

#Question 3

read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/city_temperature.csv") -> citytemp
View(citytemp)

if(citytemp$Region[11] == "Africa"){
  print("the region for which we are calculating average temperature is Africa")
}

if(citytemp$City[79961] == "Conakry"){
  print("the city for which we are calculating average temperature is Conakry")
}

if(citytemp$Year[70] == 1995){
  print("we are calculating average temperature for the year 1995")
}
