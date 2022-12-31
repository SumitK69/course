#Question 1

internetservices <- c("DSL","fiber optic","cable broadband","wireless")
numvalues <- c(30:40)
logicalv <- c(TRUE,FALSE,TRUE,TRUE,TRUE,FALSE)

list(internetservices, numvalues, logicalv) -> container1
container1

#Question 2

paymentmethod <- c("Electronic check","mailed check","credit card","online transfer")
numvalues <- c(85:95)
logicalv <- c(TRUE,TRUE,FALSE,TRUE,FALSE,TRUE)

list(paymentmethod, numvalues, logicalv) -> container2
container2

#Question 3

contracttype <- c("month to month","one year","two year","three year")
numvalues <- c(1,12,17,32,72)
logicalv <- c(TRUE,FALSE,TRUE,TRUE)

list(contracttype, numvalues, logicalv) -> container3
container3

#Question i
container3[[1]][2]

#Question ii
container3[[2]][3]

#Question iii
container3[[1]][4]
