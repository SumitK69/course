read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") -> placement
View(placement)

#Question 1

tail(placement$ssc_p,5)

tail(placement$hsc_p,5)

tail(placement$degree_p,5)

tail(placement$etest_p,5)

tail(placement$mba_p,5)

tail(placement$salary,5)

#Question 2

tail(placement$salary,8) + 12000 -> placement$salary[(nrow(placement)-7):(nrow(placement))]

#Question 3

tail(placement$mba_p) + 10 ->  placement$mba_p[(nrow(placement)-5):(nrow(placement))]
