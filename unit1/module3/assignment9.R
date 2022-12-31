#Question 1
ggplot(data = placement,aes(x=hsc_s)) + geom_bar(fill = "orange") + labs (x ="higher secondary subjects") 

#Question 2
ggplot(data = placement,aes(x=degree_t)) + geom_bar(fill = "palegreen4") + labs (
x ="percentage in graduation",y="numbers of students") 

#Question 3
ggplot(data = placement,aes(x=specialisation)) + geom_bar(fill = "wheat3") + labs (
title = "distribution of specialisation",  x ="specialisation field", y = "number of students") 
