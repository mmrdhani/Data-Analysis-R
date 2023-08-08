#1 LOAD PACKAGES
library('tidyverse')
install.packages('skimr')
install.packages("janitor")
library('skimr')
library('janitor')

#2 IMPORT DATA
bookings_df <- read_csv("D:/BANGK!T/Coursera/Analisys Data/C7/praktik/hotel_bookings.csv")

#3 GETTING TO KNOW YOUR DATA
head(booking_df)

str(bookings_df)
glimpse(bookings_df)
colnames(bookings_df)

skim_without_charts(bookings_df)


#4 CLEAN YOUR DATA
trimmed_df <- bookings_df %>% select(hotel, is_canceled, lead_time)
head(trimmed_df)


#rename column name
trimmed_df %>%
  select(hotel, is_canceled, lead_time) %>%
  rename(hotel_type = hotel)

#combine the arrival month and year into one column
example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>%
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")
head(example_df)


#5 ANOTHER WAY DOING THIS
example_mutate_df <- bookings_df %>%
  mutate(guests = adults + children + babies)
head(example_mutate_df)

#6 PRACTICE calculate total canceled and average of lead_time
practice_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))
head(practice_df)