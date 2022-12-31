read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/city_temperature.csv") -> citytemp
View(citytemp)

#Question 1
class(citytemp$Region)

class(citytemp$Country)

class(citytemp$City)

class(citytemp$Month)

class(citytemp$Day)

class(citytemp$Year)

class(citytemp$AvgTemperature)

#Question 2
#all given columns are in characters datatype already in dataset

read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") ->placement_data
View(placement_data)
class(placement_data$gender)
class(placement_data$gender) <- as.vector(placement_data$gender)
class(placement_data$gender)
str(placement_data)

class(placement_data$gender) <- "character"
class(placement_data$gender)
#all given columns are in characters datatype already in dataset
str(placement_data)
