read.csv("C:\\Users\\sumit\\OneDrive\\Desktop\\course\\unit1\\datasets\\ratings (1).csv")-> ratings
read.csv("C:\\Users\\sumit\\OneDrive\\Desktop\\course\\unit1\\datasets\\movies.csv") -> movies
View(ratings)

df_movie_summary = ratings %>% group_by(movieId) %>% summarise(count = n(),mean(rating))


movie_benchmark = round(quantile(df_movie_summary$count,0.7, names = FALSE),0)

drop_movie_list = df_movie_summary[df_movie_summary$count < movie_benchmark,1]

drop_movie_list = as.data.frame(drop_movie_list)





df_movie_summary1 = ratings %>% group_by(userId) %>% summarise(count = n(),mean(userId))

cust_benchmark = round(quantile(df_movie_summary1$count,0.7, names = FALSE),0)

drop_cust_list = df_movie_summary1[df_movie_summary1$count < cust_benchmark,1]

drop_cust_list = as.data.frame(drop_cust_list)





ratings = anti_join(ratings, drop_movie_list, by = "movieId")
ratings = anti_join(ratings, drop_cust_list, by = "userId")



library(reshape2)
ratingmat <- dcast(ratings, userId~movieId, value.var = "rating", na.rm=FALSE)
ratingmat <- as.matrix(ratingmat[,-1]) 


library(recommenderlab)
ratingmat <- as(ratingmat, "realRatingMatrix")

ratingmat_norm <- normalize(ratingmat)



recommender_model <- Recommender(ratingmat_norm, method = "SVD")
recom <- predict(recommender_model, ratingmat[10], n=10) 
recom_list <- as(recom, "list") 


recom_result <- matrix(0,10)

for (i in c(1:10)){
  recom_result[i] <- movies[as.integer(recom_list[[1]][i]),2]
}


recom_result



evaluation_scheme <- evaluationScheme(ratingmat, method="cross-validation", k=5, given=3, goodRating = 5) #k=3 meaning a 3-fold cross validation.

evaluation_results <- evaluate(evaluation_scheme, method="SVD", n=c(1,3,5,10))

eval_results <- getConfusionMatrix(evaluation_results)[[1]]

eval_results

