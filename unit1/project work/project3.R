read.csv("C:\\Users\\sumit\\OneDrive\\Desktop\\course\\unit1\\datasets\\Pokemon.csv") -> pokemon
library(dplyr)

pokemon %>% select(-1) -> pokemon
colnames(pokemon)[2] <- "primary_type"
colnames(pokemon)[3] <- "secondary_type"
colnames(pokemon)[5] <- "health_points"
colnames(pokemon)[8] <- "special_attack"
colnames(pokemon)[9] <- "special_defence"
View(pokemon)

##task1
table(pokemon$primary_type)
table(pokemon$secondary_type)
 
 # Question 1
pokemon %>% filter(primary_type=="Grass" & secondary_type=="Poison") -> grass_poison_pokemon
View(grass_poison_pokemon)

maxspeed = max(grass_poison_pokemon$Speed)

grass_poison_pokemon %>% filter(Speed == maxspeed) -> maxSpeed_grass_poison_pokemon
View(maxSpeed_grass_poison_pokemon)


#Question 2
pokemon %>% filter(primary_type == "Water" & secondary_type == "Flying") -> water_flying_pokemon
View(water_flying_pokemon)

maxdefense = max(water_flying_pokemon$Defense) 
maxdefense

water_flying_pokemon %>% filter(Defense == maxdefense) -> maxDefense_water_flying_pokemon
View(maxDefense_water_flying_pokemon)


#Question 3

pokemon %>% filter(primary_type=="Fire" & secondary_type=="Psychic") -> fire_psychic_pokemon
View(fire_psychic_pokemon)

maxattack = max(fire_psychic_pokemon$Attack)
fire_psychic_pokemon %>% filter(Attack == maxattack) -> maxattack_fire_psychic_pokemon
View(maxattack_fire_psychic_pokemon)

rbind(maxSpeed_grass_poison_pokemon,maxDefense_water_flying_pokemon,maxattack_fire_psychic_pokemon) -> myPokemon
View(myPokemon)

## task2
library(caTools)
sample.split(pokemon$Attack,SplitRatio = 0.65) -> split_tag
subset(pokemon,split_tag==T) -> train
subset(pokemon,split_tag==F) -> test

model <- lm(Attack ~ Defense, data = train)


predict(model,newdata=test) -> result1
cbind(actual = test$Attack,predict = result1) -> final_data
final_data<- as.data.frame(final_data)
class(final_data)
View(final_data)

(final_data$actual - final_data$predict) -> error
cbind(final_data,error) -> final_data

RMSE = sqrt(mean(final_data$error^2))
RMSE


## task3

sample.split(pokemon$Legendary,SplitRatio = 0.65) -> split_tag
subset(pokemon,split_tag==T) -> train
subset(pokemon,split_tag==F) -> test

library(rpart)
rpart(Legendary~primary_type+secondary_type+Total+health_points + Attack + Defense + special_attack + special_defence + Speed + Generation ,data=train) -> model2
predict(model2,newdata= test,type = "class") -> result2
table(test$Legendary,result2)
acc <- (252+13)/(252+13+5+10)
acc
