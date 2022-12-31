#Question 1
barplot(table(customer$PaymentMethod),col = "burlywood4",xlab = "paymentmethod",main = "bar-plot for payment method")

#Question 2
hist(customer$TotalCharges,col = "forestgreen",xlab = "total charges",main = "histogram for total charges")

#Question 3
plot(density(customer$TotalCharges,na.rm = T),col = "maroon",xlab = "total charges", main = "density plot for total charges")

