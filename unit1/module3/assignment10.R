#Question 1
ggplot(data=placement,aes(x=workex,y=etest_p)) + geom_boxplot(fill = "wheat3",col = "snow3") + ggtitle("E-test & workex")

#Question 2
ggplot(data = placement,aes(x=gender,y=etest_p,fill = degree_t)) + geom_boxplot() + ggtitle("E-test and gender")

ggplot(data = placement,aes(x=gender,y=etest_p,fill = hsc_s)) + geom_boxplot() + ggtitle("E-test and gender")

#Question 3
ggplot(data = placement,aes(x=specialisation,y=etest_p,fill = ssc_b)) + geom_boxplot() +ggtitle("E-test and specialisation")

ggplot(data = placement,aes(x=specialisation,y=etest_p,fill = hsc_b)) + geom_boxplot() +ggtitle("E-test and specialisation")