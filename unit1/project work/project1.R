library(arules)
library(arulesViz)
library(dplyr)
library(RColorBrewer)

market_basket = read.transactions(
    file='C:\\Users\\sumit\\OneDrive\\Desktop\\course\\unit1\\datasets\\market_basket.csv',
    sep=',',
    quote="",
    format = 'basket',
    rm.duplicates = TRUE,
    skip = 1
)
summary(market_basket)

total_items_purchased = 18440 * 223346 *  0.0009915565
total_items_purchased

market_basket %>% head(5) %>% inspect

itemFrequencyPlot(market_basket,
topN=10,
type="absolute",
horiz = T,
col=brewer.pal(10,'Spectral')
)

apriori(market_basket,parameter = list(support=0.005,confidence=0.8)) %>% sort(by='confidence') ->rule1

summary(rule1)

rule1 %>% head(5) %>% inspect

rule1 %>% tail(5) %>% inspect

rule1 %>% sort(by="lift") -> rule1

rule1 %>% head(5) %>% inspect

#plotting

plot(rule1,engine="htmlwidget")
plot(rule1,method="two-key",engine="htmlwidget")
plot(rule1,method="graph",engine="htmlwidget")


#2nd set of association rule
apriori(market_basket,parameter = list(support=0.009,confidence=0.3)) %>% sort(by='confidence') ->rule2

summary(rule2)

rule2 %>% head(5) %>% inspect

rule2 %>% tail(5) %>% inspect    

plot(rule2,engine="htmlwidget")
plot(rule2,method="two-key",engine="htmlwidget")
plot(rule2,method="graph",engine="htmlwidget")


#3rd set of association rule
apriori(market_basket,parameter = list(support=0.02,confidence=0.5)) %>% sort(by='support') ->rule3

summary(rule3)

rule3 %>% head(5) %>% inspect

rule3 %>% tail(5) %>% inspect    

plot(rule3,engine="htmlwidget")
plot(rule3,method="two-key",engine="htmlwidget")
plot(rule3,method="graph",engine="htmlwidget")

