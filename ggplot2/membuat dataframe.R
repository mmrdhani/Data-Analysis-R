library(tidyverse)

#create dataframe
names <- c("Agus", "Tri", "Pras", "Setyo")
age <- c(12, 32, 8, 11)
people <- data.frame(names, age)

#inspect the dataframe
head(people)
str(people) #preview your data
glimpse(people) #preview your data

colnames(people)

#create a new variable
mutate(people, age_in_20 = age + 20)


#MEMBUAT DATA FRAME YANG BARU

buah <- c("apel", "manggis", "rambutan", "leci", "klengkeng", "melon")
rank <- c(2,4,1,3,5,6)

buah_rank <-data.frame(buah, rank)

head(buah_rank)
