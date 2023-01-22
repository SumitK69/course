read.csv("C:\\Users\\sumit0069\\Desktop\\course\\unit1\\datasets\\census-income_.csv") -> census
str(census)
 
View(census)
sum(is.na(census))

census[census == " ?"] <- NA

census <- na.omit(census)

sum(is.na(census))
dim(census)
 
library(dplyr)
library(stringr)

census %>% mutate_if(is.character,str_trim) -> census

#converting character columns to factor 

census$workclass <- as.factor(census$workclass)
census$occupation <- as.factor(census$occupation)
census$native.country <- as.factor(census$native.country)
census$education <- as.factor(census$education)
census$marital.status <- as.factor(census$marital.status)
census$relationship <- as.factor(census$relationship)
census$race <- as.factor(census$race)
census$sex <- as.factor(census$sex)
census$X <- as.factor(census$X)

str(census)

census_ed <- census %>% select(education)
View(census_ed)

census_seq <- census %>% select(age:relationship)
View(census_seq)

census_col <- census %>% select(c(5,8,11))
View(census_col)

male_gov <- census %>% filter(sex == "Male" & workclass == "State-gov")
View(male_gov)

census_us <- census %>% filter(age == 39 & (education == "Bachelors" | native.country == "United-States"))
View(census_us)

census_200 <- census %>% sample_n(200) 
View(census_200)

census %>% count(workclass)

census %>% group_by(workclass) %>% summarise(mean(capital.gain))

# data visualization section

library(ggplot2)

#bar plot

ggplot(census,aes(x=relationship,fill = race)) + geom_bar() 

ggplot(census,aes(x=relationship,fill = race)) + geom_bar() + labs(x="categories of relationships", y = "count of categories")

ggplot(census,aes(x=relationship,fill = sex)) + geom_bar() + labs(x="categories of relationships", y = "count of categories")

ggplot(census,aes(x=relationship,fill = sex)) + geom_bar(position = "dodge") + labs(x="categories of relationships", y = "count of categories")

ggplot(census,aes(x=relationship,fill = sex)) + geom_bar(position = "dodge") + labs(x="categories of relationships", y = "count of categories",title= "distribution of relationships by sex")


#histogram

ggplot(census,aes(x=age)) + geom_histogram()

ggplot(census,aes(x=age,fill = X)) + geom_histogram(bins = 50)

ggplot(census,aes(x=age,fill = X)) + geom_histogram(bins = 50) + labs(title = "distribution of age")

ggplot(census,aes(x=age,fill = X)) + geom_histogram(bins = 50) + labs(title = "distribution of age",fill = "yearly income")

ggplot(census,aes(x=age,fill = X)) + geom_histogram(bins = 50) + labs(title = "distribution of age",fill = "yearly income") +theme_bw()

# scatter plot

ggplot(census,aes(x=capital.gain,y=hours.per.week)) + geom_point()

ggplot(census,aes(x=capital.gain,y=hours.per.week)) + geom_point(alpha = 0.6,size = 2)

ggplot(census,aes(x=capital.gain,y=hours.per.week, col = X)) + geom_point(alpha = 0.6,size = 2)

ggplot(census,aes(x=capital.gain,y=hours.per.week, col = X)) + geom_point(alpha = 0.6,size = 2) + labs(x = "capital gain",y = "hours per week",title = "captial gain vs hours per week", col = "yearly income")

# box plot

ggplot(census,aes(x = education,y = age)) +geom_boxplot()

ggplot(census,aes(x = education,y = age, fill = sex)) +geom_boxplot()

ggplot(census,aes(x = education,y = age, fill = sex)) +geom_boxplot() + labs(title= "box-plot of age by education and sex")

# linear regression

library(caTools)

set.seed(111)
sample.split(census$hours.per.week,SplitRatio = 0.70) -> split_tag

subset(census,split_tag == TRUE) -> train
subset(census,split_tag == FALSE) -> test

dim(census)
dim(train)

l_model <- lm(hours.per.week ~ education.num,data= train)

summary(l_model)

pred_val <- predict(l_model,newdata = test)

cbind(Actual = test$hours.per.week,predicted = pred_val) -> final_data

final_data <- as.data.frame(final_data)
View(final_data)

final_data$Actual - final_data$predicted -> error

cbind(final_data,error = error) -> final_data
final_data <- as.data.frame(final_data)
View(final_data)

#rmse

sqrt(mean(final_data$error^2))

#logistic regression

sample.split(census$X,SplitRatio = 0.65) -> split_tag
subset(census,split_tag==TRUE) -> train
subset(census,split_tag==FALSE) -> test

log_mod <- glm(X~occupation,data=train,family = "binomial")
summary(log_mod)

pred_val <- predict(log_mod,newdata=test,type="response")

# install.packages("ROCR")

library(ROCR)

prediction(pred_val,test$X) -> predict_log_roc

performance(predict_log_roc,"acc") -> acc

plot(acc)

table(census$X)


lm.pred <- ifelse(pred_val >0.47 ,">50k", "<=50k")
lm.pred

table(lm.pred,test$X) -> tab
tab

sum(diag(tab))/sum(tab)

library(caret)

confusionMatrix(factor(lm.pred),test$X)

performance(predict_log_roc,"tpr","fpr") -> roc
plot(roc)

performance(predict_log_roc,"auc") -> auc
auc <- auc@y.values[[1]]
auc

#b

sample.split(census$X,SplitRatio = 0.80) -> split_tag
subset(census,split_tag==TRUE) -> train
subset(census,split_tag==FALSE) -> test

log_mod <- glm(X~age+ workclass + education,data=train,family = "binomial")
summary(log_mod)

pred_val <- predict(log_mod,newdata= test,type = "response")

library(ROCR)

prediction(pred_val,test$X) -> predict_log_roc

performance(predict_log_roc,"acc") -> acc
plot(acc)

table(census$X)

lm.pred <- ifelse(pred_val >0.45 ,">50k", "<=50k")

table(lm.pred,test$X) -> tab
tab

sum(diag(tab))/sum(tab)

confusionMatrix(factor(lm.pred),test$X)

performance(predict_log_roc,"tpr","fpr") -> roc
plot(roc)

auc_ROCR <- performance(predict_log_roc,"auc")

auc_ROCR <- auc_ROCR@y.values[[1]]
auc_ROCR


#Decision tree
library(caTools)
library(caret)

set.seed(333)
sample.split(census$X,SplitRatio = 0.70) -> split_tag
subset(census,split_tag==TRUE) ->train
subset(census,split_tag==FALSE) ->test

library(rpart)
library(rpart.plot)

census_model <- rpart(formula = X ~ ., data= train,method = "class")

rpart.plot(x = census_model,type = 5 ,extra = 0, tweak = 1.2)

class_prediction <- predict(object = census_model,newdata= test,type= "class")

tab <- table(prediction = class_prediction,actual = test$X)

sum(diag(tab))/sum(tab)

confusionMatrix(class_prediction,test$X)

#random forest
library(caTools)

# install.packages("randomForest")

library(randomForest)

sample.split(census$X,SplitRatio = 0.80) -> split_tag
subset(census,split_tag == TRUE) -> train
subset(census,split_tag == FALSE) -> test


census_model <- randomForest(formula = X ~ . ,data = train,ntree=300)
print(census_model)
plot(census_model)

class_prediction <- predict(census_model,newdata= test,type = 'class')

tab <- table(Prediction = pred_val,actual = test$X)

sum(diag(tab))/sum(tab)

confusionMatrix(class_prediction,test$X)
