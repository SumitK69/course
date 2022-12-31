#Question 1
ggplot(data = placement,aes(x=degree_t)) + geom_bar(fill="yellowgreen") + labs(title = "degree plot")

#Question 2
ggplot(data = placement,aes(x=ssc_b)) + geom_bar(fill="beige") + labs(title = "ssc plot")

#Question 3
ggplot(data = placement,aes(x=hsc_b)) + geom_bar(fill="cornsilk4") + labs(title = "hsc plot")

#Question 4
ggplot(data = placement,aes(x=specialisation)) + geom_bar(fill="pink") + labs(title = "specialisation plot")
