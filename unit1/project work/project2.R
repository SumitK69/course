library(tidyr)
library(ggplot2)
library(stringr)
library(DT)
library(knitr)
library(grid)
library(gridExtra)
library(methods)
library(Matrix)
library(RColorBrewer)
library(dplyr)
library(recommenderlab)

#loading the csv datasets
books = read.csv("C:\\Users\\sumit\\OneDrive\\Desktop\\course\\unit1\\datasets\\books.csv")
ratings = read.csv("C:\\Users\\sumit\\OneDrive\\Desktop\\course\\unit1\\datasets\\booksratings.csv")
book_tags = read.csv("C:\\Users\\sumit\\OneDrive\\Desktop\\course\\unit1\\datasets\\book_tags.csv")
tags = read.csv("C:\\Users\\sumit\\OneDrive\\Desktop\\course\\unit1\\datasets\\booktags_tag.csv")
View(books)
View(ratings)
View(book_tags)
View(tags)

#phase 1
ratings %>% group_by(user_id,book_id) %>% mutate(N=n())-> ratings

nrow(ratings)
table(ratings$N)

ratings %>% filter(N>1) -> duplicate_ratings

ratings %>% filter(N == 1) -> ratings
table(ratings$N)
nrow(ratings)
ratings %>% group_by(user_id) %>% mutate(given_ratings=n()) -> ratings

ratings %>% filter(given_ratings>2) -> ratings
nrow(ratings)

#phase2
set.seed(1)
user_fraction <- 0.02
users <- unique(ratings$user_id)
length(users)
sample_users <- sample(users, round(user_fraction * length(users)))
length(sample_users)

ratings %>% filter(user_id %in% sample_users) ->ratings
nrow(ratings)
 
ratings %>% ggplot(aes(x=rating,fill=factor(rating))) + geom_bar(col="grey20") + scale_fill_brewer(palette="YlGnBu") + guides(fill=FALSE)
 
ratings %>% group_by(book_id) %>% summarize(number_of_rating_per_book = n()) %>% 
ggplot(aes(number_of_rating_per_book)) + geom_bar(fill = "orange",col="grey20",width=1) + coord_cartesian(c(0,40))

genres <- str_to_lower(c("Art", "Biography", "Business", "Chick Lit", "Children's", "Christian", "Classics", "Comics", "Cookbooks", "Crime", "Fantasy", "Gay and Lesbian", "Graphic Novels", "Historical Fiction", "History", "Horror", "Humor and Comedy", "Manga", "Memoir", "Music", "Mystery", "Paranormal", "Philosophy", "Poetry", "Psychology", "Religion", "Romance", "Science", "Science Fiction", "Self Help", "Suspense", "Spirituality", "Sports", "Thriller", "Travel", "Young Adult"))
genres

available_genres <- genres[str_to_lower(genres) %in% tags$tag_name]
available_tags <- tags$tag_id[match(available_genres, tags$tag_name)]

available_genres
available_tags

book_info <- book_tags %>% 
filter(tag_id %in% available_tags) %>%
group_by(tag_id)%>%
summarize(n=n())%>%
ungroup()%>%
mutate(sumN = sum(n),percentage = n/sumN)  %>%
arrange(percentage) %>%
left_join(tags,by="tag_id")

View(book_info)

book_info %>% ggplot(aes(reorder(tag_name,percentage),percentage,fill=percentage)) + 
geom_bar(stat = "identity")+ coord_flip() + scale_fill_distiller(palette = 'YlOrRd') + labs(y = 'Percentage', x = 'Genre')


books %>% 
  arrange(-average_rating) %>% 
  top_n(10,wt = average_rating) %>% 
  select(title, ratings_count, average_rating) -> top10
View(top10)

books %>% 
  arrange(-ratings_count) %>% 
  top_n(10,wt = ratings_count) %>% 
  select(title, ratings_count, average_rating) -> toppopular
View(toppopular)

#phase 3
dimension_name =  list(user_id = sort(unique(ratings$user_id)),book_id = sort(unique(ratings$book_id)))
ratingmat = spread(select(ratings,book_id, user_id, rating),book_id,rating) %>% select(-user_id)

class(ratingmat)

ratingmat <- as.matrix(ratingmat)
class(ratingmat)

ratingmat <- ratingmat[,-1]
ratingmat[1:5,1:5]

dimnames(ratingmat) <- dimension_name

dim(ratingmat)
 
ratingmat0 = ratingmat
dim(ratingmat0)
ratingmat0[is.na(ratingmat0)] <- 0
sparse_ratings <- as(ratingmat0,"sparseMatrix")
sparse_ratings[1:5,1:5]
real_ratings <- new("realRatingMatrix", data= sparse_ratings)
real_ratings

sample(x=c(T,F),size=nrow(real_ratings),replace = T, prob = c(0.8,0.2)) -> split_book
real_ratings[split_book,] -> train
real_ratings[!split_book,] -> test

Recommender(data = train,method = "IBCF") -> recc_model_ibcf
n_recommended_ibcf  <- 6
predict(object = recc_model_ibcf,newdata= test, n = n_recommended_ibcf) ->ibcf_predict

ibcf_predict@items[[1]] -> user1_book_numbers
ibcf_predict@itemLabels[user1_book_numbers]

ibcf_predict@items[[3]] -> user3_book_numbers
ibcf_predict@itemLabels[user3_book_numbers] 