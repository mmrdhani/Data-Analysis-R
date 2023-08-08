#dont forget to import package
library(tidyverse)
library(ggplot2)


#load data
hotel <- read_csv("D:/BANGK!T/Coursera/Analisys Data/C7/praktik/hotel_bookings.csv")


#refresh your memory
head(hotel)
colnames(hotel)
View(hotel)


#plotting
ggplot(data=hotel) + geom_bar(mapping = aes(x=distribution_channel))


ggplot(data=hotel) + geom_bar(mapping=aes(x=distribution_channel, fill=market_segment))



ggplot(data=hotel) +
  geom_bar(mapping= aes(x=distribution_channel)) +
  facet_wrap(~deposit_type) + 
  theme(axis.text.x = element_text(angle = 45))

ggplot(data=hotel) +
  geom_bar(mapping=aes(x=distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle=45))


ggplot(data=hotel) +
  geom_bar(mapping=aes(x=distribution_channel)) + 
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))
