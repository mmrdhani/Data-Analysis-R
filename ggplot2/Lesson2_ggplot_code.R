#load package
library(ggplot2)


#import data
hotel_bookings <- read_csv("D:/BANGK!T/Coursera/Analisys Data/C7/praktik/hotel_bookings.csv")


#looking your data
head(hotel_bookings)


#creating plot
ggplot(data=hotel_bookings) +
  geom_point(mapping = aes(x=lead_time, y=children))

#View(hotel_bookings)

#practice
ggplot(data=hotel_bookings, mapping = aes(x=stays_in_weekend_nights, y=children)) + geom_point()
