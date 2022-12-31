#Question 1
summarise(placement,median_etest=median(etest_p),var_etest=var(etest_p),sd_etest=sd(etest_p))

#Question 2
summarise(placement,median_mba=median(mba_p),var_mba=var(mba_p),sd_mba=sd(mba_p))

#Question 3
summarise(group_by(placement,salary),median_hsc=median(hsc_p))

#Question 4
summarise(group_by(placement,salary),var_ssc=var(ssc_p,na.rm = T))

#Question 5
summarise(group_by(placement,salary),sd_etest=sd(etest_p,na.rm = T))
  