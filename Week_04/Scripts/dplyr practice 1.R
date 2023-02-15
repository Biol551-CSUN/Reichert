### Today we are going to learn about dyplr ####
### Created by: Leah Reichert #############
### Updated on: 2022-02-15 ####################
#### Load Libraries ######
library(palmerpenguins)
library(tidyverse)
library(here)
glimpse(penguins)
head(penguins)
filter(.data = penguins, sex == "female")
filter(.data = penguins, sex == "female", body_mass_g >5000)
# code algorithims for using either/or, are not, and and.
filter(.data = penguins, year == 2008 | 2009) # either or 
filter(.data = penguins, island!="Dream") # does not 
filter(.data = penguins, species == "Adelie" & species == "Gentoo") # and 
data2<-mutate(.data = penguins, 
              body_mass_kg = body_mass_g/1000) # change column title 
view(data2)
data2<-mutate(.data = penguins, 
              body_mass_kg = body_mass_g/1000,
              bill_length_depth = bill_length_mm/bill_depth_mm) # changing multiple columns at once
View(data2)
data2<- mutate(.data = penguins,
               after_2008 = ifelse(year>2008, "After 2008", "Before 2008"))
View(data2)
data3<-mutate(.data = penguins,
             FlipperLength_BMass = flipper_length_mm + body_mass_g)
data3<- mutate(.data = penguins,
               greater_4000 = ifelse(body_mass_g>4000, "Big", "Small"))
penguins %>% # use penguin dataframe
  filter(sex == "female") %>% #select females
  mutate(log_mass = log(body_mass_g)) #calculate log biomass
penguins %>% # use penguin dataframe
  filter(sex == "female") %>% #select females
  mutate(log_mass = log(body_mass_g)) %>% #calculate log biomass
  select(species, island, sex, log_mass)
penguins %>% # use penguin dataframe
  filter(sex == "female") %>% #select females
  mutate(log_mass = log(body_mass_g)) %>% #calculate log biomass
  select(Species = species, island, sex, log_mass) # renamed Species column new = old 
penguins %>% # 
  summarise(mean_flipper = mean(flipper_length_mm, na.rm=TRUE)) # exclude NA 
penguins %>% # 
  summarise(mean_flipper = mean(flipper_length_mm, na.rm=TRUE),
            min_flipper = min(flipper_length_mm, na.rm=TRUE))
penguins %>%
  group_by(island) %>% # summarize by certain groups 
  summarise(mean_bill_length = mean(bill_length_mm, na.rm = TRUE),
            max_bill_length = max(bill_length_mm, na.rm=TRUE))
penguins %>%
  group_by(island, sex) %>% # group by two groups 
  summarise(mean_bill_length = mean(bill_length_mm, na.rm = TRUE),
            max_bill_length = max(bill_length_mm, na.rm=TRUE))
penguins %>% # remove NA from a specific column 
  drop_na(sex) 
penguins %>%
  drop_na(sex) %>%
  group_by(island, sex) %>%
  summarise(mean_bill_length = mean(bill_length_mm, na.rm = TRUE))
penguins %>%
  drop_na(sex) %>%
  ggplot(aes(x = sex, y = flipper_length_mm)) + # pipe (plot) into ggplot 
  geom_boxplot()
























