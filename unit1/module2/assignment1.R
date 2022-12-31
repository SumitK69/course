#Question 1
s_science = filter(placement,hsc_s=="Science" & hsc_b == "Central" & hsc_p > 70)
View(s_science)

#Question 2
d_commerce = filter(placement,degree_t == "Comm&Mgmt" & specialisation == "Mkt&Fin")
View(d_commerce)

#Question 3
mba_p75 = filter(placement,mba_p > 75 & etest_p > 70)
View(mba_p75)

#Question 4
spec = filter(placement,specialisation=="Mkt&Fin" & etest_p > 90)
View(spec)

#Question 5
sorc = filter(placement,hsc_s=="Science" | hsc_s =="Commerce")
View(sorc)
