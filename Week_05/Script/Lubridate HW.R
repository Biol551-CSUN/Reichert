








library(here)
library(tidyverse)
library(lubridate)


CondData <- read_csv(here("Week_05", "Data", "CondData.csv"))
depth_data <- read_csv(here("Week_05", "Data", "DepthData.csv"))
view(CondData)
view(depth_data)


##code



CondData2 <- CondData %>%
  mutate(Date= mdy_hms(date)) %>% 
  drop_na()
  
DepthData2 <- depth_data %>%
  mutate(Date = ymd_hms(date)) %>% 
  drop_na()

inner_join(DepthData2, CondData2)%>%   ###combining data sets
  mutate(date= round_date(Date, "1 minute")) %>%  ###round time in date to minutes
  group_by(Date)%>%
  summarise(mean_depth=mean(Depth, na.rm= TRUE),
            mean_temp= mean(Temperature, na.rm= TRUE),
            mean_salinity= mean(Salinity, na.rm= TRUE))%>%  ###getting mean of deoth, temperature, and salinity
  ggplot(aes(x= Date,
             y= mean_temp))+ ##graphing by date and average temp
  geom_point(color="#AD7DE8")+
  geom_line(color= "#AD7DE8")+ ##using purple color
  labs(x= "Time of January",
       y= "Average Temperature",
       title= "Average Temperature by Time")+ ##labeling x y and title
  theme_classic() ##changing background


view(depth_with_con)
