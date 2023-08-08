library(tidyverse)
library(ggplot2)
install.packages("palmerpenguins")
library(palmerpenguins)

#getting know your data
data(penguins)
View(penguins)
head(penguins)


ggplot(data = penguins) + geom_point(mapping = aes(x = bill_length_mm, y = body_mass_g))
#or u can use another syntax
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) + geom_point()
