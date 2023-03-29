### Load Libraries ###
library(ggplot2)
library(readr)
library(dplyr)
library(lubridate)
library(tidyverse)
library(here)


### Load Data ###
us_births_2000_2014 <- read_csv("Goodplot and Badplot/Data/us_births_2000-2014.csv")
View(us_births_2000_2014)
View(births) #mean births

### convert numeric to month ? ###


### Plot Data ###
births %>%
ggplot(aes(x = month, y = mean_births)) +
  geom_bar(stat = "identity", fill = "darkorchid", aplpha = 1, width =.4) +
  coord_flip () +
  facet_wrap(~year) +
  labs(x = "Month", y = "Average Births") +
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12),
                     labels = c("Jan", "Feb", "Mar","Apr", "May","Jun","Jul","Aug","Sep","Oct", "Nov", "Dec")) +
  scale_y_continuous(breaks = c(2000,4000,6000,8000,10000)) +
  theme_light() +
  theme(panel.background = element_rect(fill = "snow2")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1)) # make x axis text vertical 
ggsave(here("Goodplot and Badplot","Output","Goodplot.png"), 
       width = 7, height = 5) 
