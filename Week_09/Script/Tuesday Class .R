#### Today we are going to learn how to make functions ####
### By" Leah Reichert ###
## 2023-4-4 ##
library(tidyverse)
library(palmerpenguins)
library(ggplot2)
library(PNWColors)

df <- tibble::tibble(
  a = rnorm(10), # draws 10 random values from a normal distribution
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)
head(df)

df<-df %>%
  mutate(a = (a-min(a, na.rm = TRUE))/(max(a, na.rm = TRUE)-min(a, na.rm = TRUE)))

df<-df %>%
  mutate(a = (a-min(a, na.rm = TRUE))/(max(a, na.rm = TRUE)-min(a, na.rm = TRUE)),
         b = (b-min(b, na.rm = TRUE))/(max(b, na.rm = TRUE)-min(b, na.rm = TRUE)),
         c = (c-min(c, na.rm = TRUE))/(max(c, na.rm = TRUE)-min(c, na.rm = TRUE)),
         d = (d-min(d, na.rm = TRUE))/(max(d, na.rm = TRUE)-min(d, na.rm = TRUE)))

df<-df %>%
  mutate(0.527 = (0.527-min(0.527, na.rm = TRUE))/(max(0.527, na.rm = TRUE)-min(0.527, na.rm = TRUE)),
         0.371 = (0.371-min(0.371, na.rm = TRUE))/(max(0.371, na.rm = TRUE)-min(0.371, na.rm = TRUE)),
         0.572 = (0.572-min(0.572, na.rm = TRUE))/(max(0.572, na.rm = TRUE)-min(0.572, na.rm = TRUE)),
         0.373 = (0.373-min(0.373, na.rm = TRUE))/(max(0.373, na.rm = TRUE)-min(0.373, na.rm = TRUE)))


fahrenheit_to_celsius <- function() {
temp_C <- (temp_F - 32) * 5 / 9
}

fahrenheit_to_celsius <- function(temp_F) 
}
  temp_C <- (temp_F - 32) * 5 / 9 
celsius_to_kelvin -> function(Temp_C) {
  temp_K -> (Temp_C) +273.15
  return(temp_K)
}

celsius_to_kelvin(0)

### Make a plot ###

pal<-pnw_palette("Lake",3, type = "discrete")

ggplot(penguins, aes(x = body_mass_g, y = bill_length_mm, color = island))+
  geom_point()+
  geom_smooth(method = "lm")+ # add a linear model
  scale_color_manual("Island", values=pal)+   # use pretty colors and change the legend title
  theme_bw()
