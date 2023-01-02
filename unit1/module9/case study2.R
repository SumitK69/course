customer %>% select(tenure,MonthlyCharges,TotalCharges) -> customer_features
View(customer_features)

kmeans(customer_features,3) -> k_group
cbind(customer_features,clusters=k_group$cluster) -> grouped
View(grouped)

grouped %>% filter(clusters==1) -> cluster_group_1
grouped %>% filter(clusters==2) -> cluster_group_2
grouped %>% filter(clusters==3) -> cluster_group_3
View(cluster_group_1)
View(cluster_group_2)
View(cluster_group_3)
