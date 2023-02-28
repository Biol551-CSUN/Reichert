### Today we are going to practice joins with data from Becker and Silbiger (2020) ####
### Created by: Leah Reichert #############
### Updated on: 2023-02-21 ####################

#### Load Libraries ######
library(tidyverse)
library(here)

### Load data ######
# Environmental data from each site
EnviroData<-read_csv(here("Week_05","Data", "site.characteristics.data.csv"))

#Thermal performance data
TPCData<-read_csv(here("Week_05","Data","Topt_data.csv"))

glimpse(EnviroData)
glimpse(TPCData)

EnviroData_wide <- EnviroData %>% 
  pivot_wider(names_from = parameter.measured,
              values_from = values) %>%
  arrange(site.letter) # arrange the dataframe by site
View(EnviroData_wide)
FullData_left<- left_join(TPCData, EnviroData_wide) %>%
  relocate(where(is.numeric), .after = where(is.character))
head(FullData_left)

EnviroData_long <- FullData_left %>%
  pivot_longer(cols = E:substrate.cover,
               names_to= "variables",
               values_to = "values") %>%
  group_by(site.letter, variables)%>%
  summarise(mean_vals=mean(values, na.rm = TRUE),
            vars_vals=var(values, na.rm +TRUE))
View(EnviroData_long)

FullData_left%>%
group_by(site.letter)%>%
summarise_at(vars(E:substrate.cover,.funs = list(mean=mean,vars=var))) %>%
View(FullData_left)            



# Make 1 tibble
T1 <- tibble(Site.ID = c("A", "B", "C", "D"), 
             Temperature = c(14.1, 16.7, 15.3, 12.8))            

# make another tibble
T2 <-tibble(Site.ID = c("A", "B", "D", "E"), 
            pH = c(7.3, 7.8, 8.1, 7.9))
             
left_join(T1, T2) #dropped E because it was in the right data set 
right_join(T1, T2) # dropped C because its in the left data set

inner_join(T1, T2) # deletes ervything that doesnt have a value for each data set
full_join(T1, T2) # keeps all data even incomplete 

semi_join(T1, T2) # # keeps first column 
anti_join(T1, T2) # only keeps data thats missing 

library(cowsay)
say("hello", by = "shark")
say("i want pets", by = "cat")
say("i want carrots", by = "mushroom")




















