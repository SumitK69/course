#Question 1
ggplot(data=placement,aes(x=ssc_p)) + geom_histogram(bins = 50,fill="cornsilk4",col = "azure")+ggtitle("SSC percentage")

#Question 2
ggplot(data=placement,aes(x=hsc_p)) + geom_histogram(bins = 50,fill="black",col = "wheat3")+ggtitle("HSC percentage")

#Question 3
ggplot(data=placement,aes(x=degree_p)) + geom_histogram(bins = 80,fill="white",col = "violet")+ggtitle("degree percentage")

#Question 4  
ggplot(data=placement,aes(x=etest_p)) + geom_histogram(bins = 100,fill="black",col = "white")+ggtitle("E-test percentage")
