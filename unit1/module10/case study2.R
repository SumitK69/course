data("MovieLense")
as.vector(MovieLense@data) -> vector_ratings
unique(vector_ratings)
table(vector_ratings) -> table_ratings
table_ratings

vector_ratings[vector_ratings!=0] -> vector_ratings
table(vector_ratings) -> table_ratings
table_ratings

qplot(vector_ratings) + ggtitle("distribution of ratings")

colCounts(MovieLense) ->views_per_movie  
head(views_per_movie)
data.frame(MovieName=names(views_per_movie),Views=views_per_movie) -> table_view
View(table_view)

MovieLense[rowCounts(MovieLense)>100,colCounts(MovieLense)>120] -> sample_movies
sample_movies

sample.split(rowCounts(sample_movies),SplitRatio = 0.70) -> split_tag
subset(sample_movies,split_tag == T) -> train
subset(sample_movies,split_tag == F) -> test

nrow(train)
nrow(test)

Recommender(data=train,method="UBCF") -> ubcf_model

predict(ubcf_model,newdata=test,n=10) -> ubcf_predict

ubcf_predict

ubcf_predict@items[[3]]->recommanded_user3
ubcf_predict@itemLabels[recommanded_user3]


ubcf_predict@items[[5]]->recommanded_user5
ubcf_predict@itemLabels[recommanded_user5]



Recommender(data=train,method="IBCF") -> ibcf_model

predict(ibcf_model,newdata=test,n=12) -> ibcf_predict

ibcf_predict

ibcf_predict@items[[2]]->recommanded_user2
ibcf_predict@itemLabels[recommanded_user2]


ibcf_predict@items[[4]]->recommanded_user4
ibcf_predict@itemLabels[recommanded_user4]
