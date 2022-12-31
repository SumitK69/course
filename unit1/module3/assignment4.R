#Question 1
ggplot(data= customer,aes(x=TotalCharges,fill=gender)) + geom_histogram() + facet_grid(~gender)

#Question 2
ggplot(data = customer,aes(x=InternetService,y=tenure,fill= Contract)) + geom_boxplot() +facet_grid(~Contract)

#Question 3
ggplot(data = placement,aes(x=mba_p,y = etest_p,col= degree_t)) + geom_point() + facet_grid(~degree_t)
