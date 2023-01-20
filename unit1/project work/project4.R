read.csv("C:\\Users\\sumit\\OneDrive\\Desktop\\creditcard.csv")-> credit_card
nrow(credit_card)
ncol(credit_card)
str(credit_card)

credit_card$Class <- as.factor(credit_card$Class)

str(credit_card)

summary(credit_card)

sum(is.na(credit_card))

table(credit_card$Class)
prop.table(table(credit_card$Class))

labels <- c("legit","fraud")
labels <- paste(labels,round(100 * prop.table(table(credit_card$Class)),2))
labels <- paste0(labels,"%")
labels

pie(table(credit_card$Class),labels,col = c("orange","red"),main="Pie chart for credit card transaction")

# predicting class without any model
# install.packages('caret')
library(caret)

predictions <- rep.int(0,nrow(credit_card))
predictions <- factor(predictions,levels = c(0,1))

confusionMatrix(data = predictions,reference = credit_card$Class)

#predicting class with model
library(dplyr)
set.seed(1)
credit_card <-  credit_card %>% sample_frac(0.1)
nrow(credit_card)

table(credit_card$Class)

library(ggplot2)

ggplot(credit_card,aes(x= V1,y=V2,col=Class)) +geom_point() + theme_bw() + scale_colour_manual(values = c("dodgerblue2","red"))

library(caTools)

set.seed(123)

dim(credit_card)
data_sample = sample.split(credit_card,SplitRatio = 0.80)

train = subset(credit_card,data_sample == TRUE)
test= subset(credit_card,data_sample == FALSE)

dim(train)
dim(test)

table(train$Class)
 
 n_legit <- 22019
 new_frac_legit <- 0.50
 new_n_total <- n_legit/new_frac_legit
new_n_total 

#install.packages("ROSE")
library(ROSE)
oversampling_result <- ovun.sample(Class ~ .,data= train,method = "over",N=new_n_total,seed = 2019 )
oversampling_credit <- oversampling_result$data

table(oversampling_credit$Class)

ggplot(data = oversampling_credit,aes(x = V1,y = V2,col = Class)) + geom_point(position = position_jitter(width=0.2)) + theme_bw() + scale_colour_manual(values = c("dodgerblue2","red"))


table(train$Class)

n_fraud <- 38
new_frac_fraud <- 0.50
new_n_total <- n_fraud/new_frac_fraud 
new_n_total

undersampling_result <- ovun.sample(Class ~ .,data =train,method = "under",N=new_n_total,seed <- 2019)

undersampled_credit <- undersampling_result$data

table(undersampled_credit$Class)

ggplot(data = undersampled_credit,aes(x = V1,y = V2,col = Class)) + geom_point(position = position_jitter(width=0.2)) + theme_bw() + scale_colour_manual(values = c("dodgerblue2","red"))
