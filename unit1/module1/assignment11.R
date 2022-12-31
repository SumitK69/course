read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Pharmacovigilance_audit_Data.csv") -> pharm
View(pharm)

#Question 1

pharm$Gender == "F" & pharm$Age < 25 & pharm$Issues == "unclear dose" -> condition1
subset(pharm123, condition1==T) -> subsetcondition1
View(subsetcondition1)

#Question 2

condition2 <- pharm$Gender == "M" & pharm$Age < 25 & pharm$Issues == "Medication history documenting error"
subset(pharm,condition2==T)->subsetcondition2
View(subsetcondition2)

#Question 3

condition3 <-  pharm$Age == 8 & pharm$Issues == "Medication history documenting error"
subset(pharm,condition3==T)->subsetcondition3
View(subsetcondition3)

#Question 4

condition4 <- pharm$Gender == "F" & pharm$Age > 5 & pharm$Issues == "unclear dose"
subset(pharm,condition4==T)->subsetcondition4
View(subsetcondition4)

#Question 5

condition5 <- pharm$Gender == "M" & pharm$Age == 35 & pharm$Issues == "unclear route"
subset(pharm,condition5==T)->subsetcondition5
View(subsetcondition5)
