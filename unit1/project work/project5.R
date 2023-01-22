read.csv("C:\\Users\\sumit0069\\Desktop\\course\\unit1\\datasets\\cutomer_loan.csv") -> customer_loan
View(customer_loan)

sum(is.na(customer_loan))

library(dplyr)

customer_loan %>% mutate(dti = debts/income) -> customer_loan

View(customer_loan)

customer_loan <- customer_loan %>% mutate(loan_decision_status = ifelse(loan_decision_type == "Denied", 0,1))
customer_loan$loan_decision_status <- as.factor(customer_loan$loan_decision_status)
str(customer_loan)

customer_loan_refined <- customer_loan[c(3,4,6,7,8,11,13,14)]
View(customer_loan_refined)

customer_loan$gender <- as.factor(customer_loan$gender)
customer_loan$marital_status <- as.factor(customer_loan$marital_status)
customer_loan$occupation <- as.factor(customer_loan$occupation)
customer_loan$loan_type <- as.factor(customer_loan$loan_type)
str(customer_loan)

customer_loan$gender <- as.numeric(customer_loan$gender)
customer_loan$marital_status <- as.numeric(customer_loan$marital_status)
customer_loan$occupation <- as.numeric(customer_loan$occupation)
customer_loan$loan_type <- as.numeric(customer_loan$loan_type)
str(customer_loan)

library(caTools)
library(e1071)

sample.split(customer_loan$loan_decision_status,SplitRatio = 0.70) -> split_tag
subset(customer_loan,split_tag == TRUE) -> train
subset(customer_loan,split_tag == FALSE) -> test

naive_model <- naiveBayes(loan_decision_status ~ state+gender+age+race+marital_status+occupation+credit_score,data = train)

pred_val <- predict(naive_model,newdata=test, type = 'class')

table(prediction = pred_val,actual = test$loan_decision_status)
