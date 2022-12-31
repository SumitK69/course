#Question 1
sd_tenure = sd(customer$tenure)
sd_tenure

sd_MonthlyCharges <- sd(customer$MonthlyCharges)
sd_MonthlyCharges

sd_totalcharges <- sd(customer$TotalCharges,na.rm = T)
sd_totalcharges

#Question 2
sd_etest <- sd(placement$etest_p)
sd_etest

sd_salary <- sd(placement$salary,na.rm = T)
sd_salary

sd_mba <- sd(placement$mba_p)
sd_mba
