#Question 1
med_tenure <- median(customer$tenure)
med_tenure

med_MonthlyCharges <- median(customer$MonthlyCharges)
med_MonthlyCharges

med_TotalCharges <- median(customer$TotalCharges,na.rm = T)
med_TotalCharges

#Question 2
med_ssc <- median(placement$ssc_p)
med_ssc

med_hsc <- median(placement$hsc_p)
med_hsc

med_degree <- median(placement$degree_p)
med_degree
