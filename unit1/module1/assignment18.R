read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Pharmacovigilance_audit_Data.csv") -> pharm
View(pharm)

#Question a
sample(pharm$LocationID,5)

#Question b
sample(pharm$Age,25)

#Question c
sample(pharm$PatientID,15)

#Question d
sample(pharm$Issues,10)

