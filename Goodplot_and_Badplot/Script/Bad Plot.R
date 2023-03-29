### Load Libraries ###
library(ggplot2)
library(readr)
library(dplyr)

### Load Data ### 
us_births_2000_2014 <- read_csv("Goodplot and Badplot/Data/us_births_2000-2014.csv")
View(us_births_2000_2014)

### Plot Data ###
us_births_2000_2014 %>%
  ggplot(aes(x = births, y = year))+
  geom_point(
    color = "blue",
    fill = "orange",
    shape = 23,
    alpha = 0.5,
    size = 5,
    stroke = 2
  )+
  facet_wrap(~month) +
  labs( x = "", y = "") +
  scale_y_continuous(breaks = c(2005)) +
  scale_color_viridis_d()+
  theme_bw() +
  theme(panel.background = element_rect(fill = "purple"))
ggsave(here("Goodplot and Badplot","Output","Badplot.png"), 
       width = 7, height = 5) 
  

 