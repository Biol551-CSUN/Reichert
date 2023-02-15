### Today we are going to learn about dyplr: Homework ####
### Created by: Leah Reichert #############
### Updated on: 2022-02-15 ####################
#### Load Libraries ######
library(palmerpenguins) # load data 
library(tidyverse) # load package 
library(here) # load package 
glimpse(penguins) # view data 

#### Calculate Mean ####

penguins %>% # group penguin data 
  drop_na(species,island,sex) %>% # remove NA from these groups 
  group_by(species,island, sex) %>% # group categories together 
  summarise(body_mass_g = mean(body_mass_g, na.rm = TRUE)) # calculate mean body mass 

#### Calculate Variance ####

Female_Data <- penguins %>% # group penguin data 
  drop_na(species,island,sex) %>% # remove NA from these groups 
  group_by(species,island, sex) %>% # group categories together 
  summarise(body_mass_g = var(body_mass_g, na.rm = TRUE)) # calculate variance of body mass 


#### Part 2 ####

Female_Data <- penguins %>% # use penguin dataframe
  filter(sex == "female") %>% #select females
  mutate(log_mass = log(body_mass_g)) %>% # calculate log 
  select(species, island, sex, log_mass) # select categories 
library(beyonce) # load palette 
ggplot(data =Female_Data, # make a graph 
  mapping=aes(x=species, # x axis 
              y=log_mass, # y axis 
              fill=sex)) + # boxes are filled based on sex 
  geom_boxplot()+ # type of graph 
  labs(x="Females", # title of x axis 
       y="Log Mass", # title of y axis 
       title= "Homework Week 4") + # title of graph 
  facet_wrap(~species) # splits grapg by species 

ggsave(Female_Data,here("Week_04","Output","Penguin.png"), # saved 
       width=7, height=5)




