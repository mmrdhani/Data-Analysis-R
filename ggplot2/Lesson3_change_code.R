#Load package
library(tidyverse)
library(skimr)
library(janitor)

#1 IMPORT DATA
bookings_df <- read_csv("D:/BANGK!T/Coursera/Analisys Data/C7/praktik/hotel_bookings.csv")
#2GETTING KNOW YOUR DATA
head(bookings_df)

str(bookings_df)
glimpse(bookings_df)


#2 MANIPULATING YOUR DATA
arrange(bookings_df, desc(lead_time))


#3 NEW DATAFRAME
bookings2_df <- arrange(bookings_df, desc(lead_time))


#find max min
max(bookings_df$lead_time)
min(bookings_df$lead_time)
mean(bookings_df$lead_time)



hotels_booking_city <- filter(bookings_df, bookings_df$hotel=="City Hotel")
head(hotels_booking_city)


#PRACTICE
hotel_summary <- bookings_df %>%
  group_by(hotel) %>%
  summarise(average_lear_time = mean(lead_time),
            min_lead_time = min(lead_time),
            max_lead_time = max(lead_time))
print(hotel_summary)
