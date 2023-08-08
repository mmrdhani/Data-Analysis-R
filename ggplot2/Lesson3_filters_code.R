#load package
library(tidyverse)
library(ggplot2)


#import your data
hotel_bookings <- read_csv("D:/BANGK!T/Coursera/Analisys Data/C7/praktik/hotel_bookings.csv")

#refresh your memory
head(hotel_bookings)
colnames(hotel_bookings)

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x=lead_time, y=children))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=hotel, fill= market_segment))


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=hotel)) +
  facet_wrap(~market_segment)

#filter data
onlineta_city_hotels <- filter(hotel_bookings,
                               (hotel=="City Hotel" &
                                 hotel_bookings$market_segment=="Online TA"))
View(onlineta_city_hotels)
head(onlineta_city_hotels)

#or can using pipe operator
onlineta_city_hotelv2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")
View(onlineta_city_hotelv2)  

#using data  filtered
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x=lead_time, y=children))
