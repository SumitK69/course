#Question 1
ggplot(data=placement,aes(x=etest_p,fill = workex)) + geom_bar()

ggplot(data=placement,aes(x=specialisation,fill = workex)) + geom_bar()

#Question 2
ggplot(data=placement,aes(x=degree_t)) + geom_bar(fill = "orange",col = "peru")

#Question 3
ggplot(data=placement,aes(x=hsc_s,fill = hsc_b)) + geom_bar(position = "identity")

ggplot(data=placement,aes(x=hsc_s,fill = degree_t)) + geom_bar(position = "identity")
