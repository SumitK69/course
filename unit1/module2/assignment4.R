#Question 1
s_student <- select(placement,specialisation)
View(s_student)

s_salary <- select(placement,salary)
View(s_salary)

hsc_percent <- select(placement,5)
View(hsc_percent)

#Question 2

col_135 <- select(placement,1,3,5)
View(col_135)

col_26 <- select(placement,2,6)
View(col_26)

#Question 3

col_1_5 <- select(placement,1:5)
View(col_1_5)
