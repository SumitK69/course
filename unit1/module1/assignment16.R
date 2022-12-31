read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") -> placement
View(placement)

#Question 1

head(placement$sl_no,5)

head(placement$gender,5)

head(placement$ssc_p,5)

head(placement$ssc_b,5)

head(placement$hsc_p,5)

head(placement$degree_p,5)

head(placement$degree_t,5)

head(placement$etest_p,5)

head(placement$specialisation,5)

head(placement$mba_p,5)

head(placement$salary,5)

#Question 2,3,4

head(placement$salary,6) + 5000 -> placement$salary[1:6]

head(placement$etest_p,10) + 7.5 -> placement$etest_p[1:10]

head(placement$mba_p,3) - 5 -> placement$mba_p[1:3]

