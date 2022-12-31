read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") -> placement
View(placement)

#Question 1

subset(placement,placement$ssc_p>=65) ->a
View(a)

subset(placement,placement$hsc_p>=80) ->b
View(b)

subset(placement,placement$salary>200000)->c
View(c)

#Question 2

subset(placement,placement$status=="Placed" & placement$salary<250000)->a
View(a)

subset(placement,placement$degree_t=="Comm&Mgmt" & placement$salary<600000)->b
View(b)

subset(placement,placement$hsc_s=="Science" & placement$etest_p>75)->c
View(c)

#Question 3

subset(placement,placement$hsc_b=="Central" & placement$hsc_s=="Arts") -> a
View(a)

subset(placement,placement$degree_t=="Sci&Tech" & placement$etest_p==75)->b
View(b)

subset(placement,placement$status=="Placed" & placement$salary==450000)->c
View(c)
