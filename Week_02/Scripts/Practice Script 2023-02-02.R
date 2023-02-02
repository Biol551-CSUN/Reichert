### This is my first script.  I am learning how to import data
### Created by: Leah Reichert
### Created on: 2023-02-02
###############################################
### Load libraries ########## 
library(tidyverse)
library(here)
WeightData<-read_csv(here("Week_02","Data","weightdata.csv"))
head(WeightData) #Look at the top 6 lines of the dataframe
tail(WeightData) #Looks at the bottom 6 lines of the dataframe 
View(WeightData) #opens a new window to look at the entire dataframe
glimpse(WeightData)
