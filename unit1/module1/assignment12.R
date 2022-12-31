read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") -> placement
View(placement)

#Question 1

nrow(placement)
ncol(placement)

#Question 2

check <- placement$degree_t == "Sci&Tech" & placement$status == "Placed"
subset(placement,check==T) -> nosEmployed
View(nosEmployed)
nrow(nosEmployed)

#Question 3

check1 <- placement$gender=="F" & (placement$hsc_s=="Commerce" | placement$hsc_s=="Arts")
subset(placement,check1==T) -> CA
View(CA)
nrow(CA)

#Question 4

check2 <- placement$status=="Placed" & placement$salary==300000
subset(placement,check2==T) -> salaryinfo
View(salaryinfo)

#Question 5

str(placement)

intcount = 0
for(i in 1:ncol(placement)){
  if(class(placement[,i]) == 'integer'){
    intcount = intcount+1
  }  
}
intcount

chrcount = 0
for(i in 1:ncol(placement)){
  if(class(placement[,i]) == 'character'){
    chrcount = chrcount+1
  }  
}
chrcount

numcount = 0
for(i in 1:ncol(placement)){
  if(class(placement[,i]) == 'numeric'){
    numcount = numcount+1
  }  
}
numcount
