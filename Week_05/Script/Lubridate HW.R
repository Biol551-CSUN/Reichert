
### Today we are going to do a tidy assingment with biogeochemistry data from Hawaii ####
### Created by: Leah Reichert #############
### Updated on: 2023-02-16 ####################

#### Load Libraries ######

library(here)
library(tidyverse)
library(lubridate)

### Load Data ###

CondData <- read_csv(here("Week_05", "Data", "CondData.csv"))
depth_data <- read_csv(here("Week_05", "Data", "DepthData.csv"))
view(CondData)
view(depth_data)

### Code ###


CondData2 <- CondData %>%
  mutate(date= mdy_hms(date), # change to datetime 
                       date= round_date(date, "10 seconds")) %>% # getting rid of seconds below 10
  drop_na() # remove na 
  
DepthData2 <- depth_data %>%
  mutate(date = ymd_hms(date), #change to datetime 
                        date= round_date(date, "10 seconds")) %>% # getting rid of seconds below 10
  drop_na() #remove na 


inner_join(DepthData2, CondData2)%>%   ###combining data sets
  mutate(date= round_date(date, "1 minute")) %>%  ###round time in date to minutes
  group_by(date)%>%
  summarise(mean_depth=mean(Depth, na.rm= TRUE),
            mean_temp= mean(Temperature, na.rm= TRUE),
            mean_salinity= mean(Salinity, na.rm= TRUE))%>%  ###getting mean of deoth, temperature, and salinity
  ggplot(aes(x= date,
             y= mean_temp))+ ##graphing by date and average temp
  geom_point(color="#AD7DE8")+
  geom_line(color= "#AD7DE8")+ ##using purple color
  labs(x= "Time of January",
       y= "Average Temperature",
       title= "Average Temperature by Time")+ ##labeling x y and title
  theme_classic() ##changing background

ggsave(here("Week_05","Output","Lab Homework Thursday.png"), # saved 
       width=7, height=5)

view(depth_with_con)
