read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/customer_churn.csv") -> customer
View(customer)

mean(customer$tenure) -> tenureMean
tenureMean

mean(customer$MonthlyCharges) -> monthlyMean
monthlyMean

totalMeanNoNull <- na.omit(customer$TotalCharges)
mean(totalMeanNoNull) -> totalMean
totalMean

#Question2
read.csv("C:/Users/sumit/OneDrive/Desktop/course/rlang/datasets/Placement_Data_Full_Class.csv") ->placement
View(placement)

mean(placement$ssc_p) -> ssc_pMean
ssc_pMean

mean(placement$hsc_p) -> hsc_pMean
hsc_pMean

mean(placement$degree_p) -> degree_pMean
degree_pMean

mean(placement$etest_p) -> etest_pMean
etest_pMean

mean(placement$mba_p) -> mba_pMean
mba_pMeans

salaryNoNull <- na.omit(placement$salary)
mean(salaryNoNull) -> salaryMean
salaryMean
