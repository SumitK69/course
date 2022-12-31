#Question 1
ggplot(data=placement,aes(x=hsc_p,y=ssc_p,col=gender)) + geom_point() +ggtitle("comparing hsc & ssc percentage")

ggplot(data=placement,aes(x=hsc_p,y=ssc_p,col=workex)) + geom_point() +ggtitle("comparing hsc & ssc percentage")

ggplot(data=placement,aes(x=hsc_p,y=ssc_p,col=status)) + geom_point() +ggtitle("comparing hsc & ssc percentage")

#Question 2
ggplot(data=placement,aes(x=degree_p,y=mba_p,col=status)) + geom_point() +ggtitle("understanding degree & MBA percentage")

ggplot(data=placement,aes(x=degree_p,y=mba_p,col=specialisation)) + geom_point() +ggtitle("understanding degree & MBA percentage")

#Question 3
ggplot(data=placement,aes(x=etest_p,y=salary,col=workex)) + geom_point() +ggtitle("E-test & salary")

ggplot(data=placement,aes(x=etest_p,y=salary,col=gender)) + geom_point() +ggtitle("E-test & salary")