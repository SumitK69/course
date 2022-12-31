#Question 1
ggplot(data =placement,aes(x=gender,y=ssc_p,col=ssc_b)) + geom_point()

#Question 2
ggplot(data =placement,aes(x=ssc_b,y=hsc_s,col=degree_t)) + geom_point()

#Question 3
ggplot(data =placement,aes(x=status,y=salary,col=specialisation)) + geom_point()

#Question 4
ggplot(data =placement,aes(x=degree_t,y=etest_p,col=workex)) + geom_point()

#Question 5
ggplot(data =placement,aes(x=hsc_s,y=hsc_b,col=gender)) + geom_point()

#Question 6
ggplot(data =placement,aes(x=hsc_s,y=etest_p,col=degree_t)) + geom_point()





