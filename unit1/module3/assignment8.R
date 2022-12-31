#Question 1
ggplot(data = placement,aes(x=specialisation)) + geom_bar(fill = "skyblue") + theme(
panel.background = element_rect(fill = "cornsilk4")) + theme(plot.background = element_rect(
fill = "lightgreen"))

#Question 2
ggplot(data = placement,aes(x=ssc_p,y=hsc_p)) + geom_point(col = "lightgreen") + labs(
title = "hsc percent vs ssc percent") +theme(plot.title = element_text(hjust = 0.5),
panel.background = element_rect(fill = "skyblue"), plot.background= element_rect(fill = "beige"))
