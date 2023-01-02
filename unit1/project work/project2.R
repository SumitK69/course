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
sample_users <- sample(users, round(user_fraction * length(users)))
nrow(ratings)

ratings %>% filter( user_id %in% sample_users) ->ratings
nrow(ratings)
 
ratings %>% ggplot(aes(x=rating,fill=factor(rating))) + geom_bar(col="grey20") + scale_fill_brewer(palette="YlGnBu") + guides(fill=FALSE)
 
ratings %>% group_by(book_id) %>% summarize(number_of_rating_per_book = n()) %>% 
ggplot(aes(number_of_rating_per_book)) + geom_bar(fill = "orange",col="grey20",width=1) + coord_cartesian(c(0,40))

genres <- str_to_lower(c("Art", "Biography", "Business", "Chick Lit", "Children's", "Christian", "Classics", "Comics", "Cookbooks", "Crime", "Fantasy", "Gay and Lesbian", "Graphic Novels", "Historical Fiction", "History", "Horror", "Humor and Comedy", "Manga", "Memoir", "Music", "Mystery", "Paranormal", "Philosophy", "Poetry", "Psychology", "Religion", "Romance", "Science", "Science Fiction", "Self Help", "Suspense", "Spirituality", "Sports", "Thriller", "Travel", "Young Adult"))


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

book_info %>% ggplot(aes(reorder(tag_name,percentage),percentage,fill=percentage)) + 
geom_bar(stat = "identity")+ coord_flip() + scale_fill_distiller(palette = 'YlOrRd') + labs(y = 'Percentage', x = 'Genre')


books %>% 
  arrange(-average_rating) %>% 
  top_n(10,wt = average_rating) %>% 
  select(title, ratings_count, average_rating) -> top10
top10
