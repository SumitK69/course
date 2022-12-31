sample.split(customer$Churn,SplitRatio = 0.80) -> split_tag
subset(customer,split_tag==T) ->train
subset(customer,split_tag==F) -> test
glm(as.factor(Churn)~tenure + MonthlyCharges + TechSupport,data = train,family = "binomial") -> log_mod_roc
predict(log_mod_roc,test,type = "response") -> result_log_roc
prediction(result_log_roc,test$Churn) ->pred_log
performance(pred_log,"tpr","fpr") -> roc
plot(roc)
