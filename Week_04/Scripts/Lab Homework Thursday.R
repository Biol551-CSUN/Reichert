### Today we are going to do a tidy assingment with biogeochemistry data from Hawaii ####
### Created by: Leah Reichert #############
### Updated on: 2023-02-16 ####################
#### Load Libraries ######
library(tidyverse)
library(here)
library(ggplot2)
theme_set(theme_classic())
### Load data ######
ChemData<-read_csv(here("Week_04","Data", "chemicaldata_maunalua.csv"))
View(ChemData) # view data 
glimpse(ChemData) # view data 
ChemData_clean<-ChemData %>% # rename data 
  drop_na() %>% #filters out everything that is not a complete row
  separate(col = Tide_time, # choosing the tide time column
           into = c("Tide","Time"), # separate the columns into Tide and Time
           sep = "_",)%>%
filter(Tide == "High") %>%# filter by high tide only
pivot_longer(cols = Temp_in:percent_sgd, # the columns I pivoted
             names_to = "Variables", # the name of my new column with the column names 
             values_to = "Values") %>%# name the new column with the values 
group_by(Variables, Site, Tide, Season) %>% # group by what I chose
  summarise(Param_means = mean(Values, na.rm = TRUE), # get mean
            Param_vars = var(Values, na.rm = TRUE), # get variance 
            Param_sds = sd(Values, na.rm = TRUE)) %>% # get standard deviation 
write_csv(here("Week_04", "Output", "Lab Homework Thursday")) # export as a csv 

ChemData %>% # use data 
  drop_na() %>% # remove NA 
  ggplot(aes(x = Zone, y = Salinity, # what you wanted plotted 
             color = pH))+
  geom_col() + # plot I used 
  labs(x="Zones", # title of x axis 
       y="Salinity", # title of y axis 
       title= "ChemData Zone vs. Salinity") 
ggsave(here("Week_04","Output","Lab Homework Thursday.png"), # saved 
       width=7, height=5)


