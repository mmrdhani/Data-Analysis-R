#import library
library(tidyvers)
library(ggplot2)


#import your data
hotel_df <- read_csv("D:/BANGK!T/Coursera/Analisys Data/C7/praktik/hotel_bookings.csv")

colnames(hotel_df)
head(hotel_df)
View(hotel_df)

ggplot(data = hotel_df)+
  geom_bar(mapping = aes(x = market_segment))+
  facet_wrap(~hotel)+
  labs(title = "Comparration of market Segment by Hotel Type and Hotel Bookings")

#adding min and max arrival date year
min_arrival <- min(hotel_df$arrival_date_year)
max_arrival <- max(hotel_df$arrival_date_year)

#plot with caption
ggplot(data = hotel_df)+
  geom_bar(mapping = aes(x = market_segment))+
  facet_wrap(~hotel)+
  theme(axis.text.x = element_text(angle = 45))+
  labs(title = "Comparation of Market Segment by Hotel Type and Hotel Bookings",
       caption=paste0("Date from = ", min_arrival, " to ", max_arrival)
       
#plot with name
ggplot(data = hotel_df)+
  geom_bar(mapping = aes(x = market_segment))+
  facet_wrap(~hotel)+
  theme(axis.text.x = element_text(angle = 45))+
  labs(title = "Comparation of Market Segment by Hotel Type and Hotel Bookings",
       caption=paste0("Date from = ", min_arrival, " to ", max_arrival),
       x = "Market Segment",
       y = "Number of Bookings")

#saving your chart with ggsave()

ggsave("D:/BANGK!T/Coursera/Analisys Data/C7/praktik/save_chart.png",
       width = 25,
       height = 25)


