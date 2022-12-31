#Question 1
#newer version of r is using plot function to plot a single line as a graph
# that's why i am using barplot to plot the graph in bar format
barplot(table(placement$degree_t))

#Question 2
barplot(table(placement$hsc_s))

#Question 3
barplot(table(placement$specialisation),main = "specialisation of candidate")

#Question 4
barplot(table(placement$ssc_b),col ="aquamarine4",main="Types of board")
