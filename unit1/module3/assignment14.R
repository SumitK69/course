#Question 1
plot_ly(data = pharm,x=~Age,type = "histogram",color = ~Issues)

plot_ly(data = pharm,x=~Age,type = "histogram",color = ~Gender)

#Question 2
plot_ly(data = pharm,x=~Gender,y=~Age,type="scatter",color=~Issues) 

plot_ly(data = pharm,x=~DrugID,y=~Age,type="box",color = ~Gender)
