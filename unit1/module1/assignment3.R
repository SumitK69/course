read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Pharmacovigilance_audit_Data.csv") ->pharm
View(pharm)

pharm[,c("Age","Issues")] -> pharmAgeIssue
pharmAgeIssue

pharm[,c("PatientID","DrugID")] -> pharmPDID
pharmPDID

pharm[,c("Gender","Age","Issues")] -> pharmGAI
pharmGAI

#Question 2

pharm[c(1,2,3,4,5),] -> pharm1to5
pharm1to5

pharm[15:75,]-> pharm15to75
pharm15to75

pharm[100:150,]-> pharm100to150
pharm100to150

#Question3

pharm[1:10,c(1,2,4)] -> first
first

pharm[50:120,c(2,4,5)] -> second
second

pharm[100:200,c(1,3,6)] -> third
third
