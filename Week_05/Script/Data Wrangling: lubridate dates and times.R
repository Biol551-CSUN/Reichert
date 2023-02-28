### Today we are going to practice joins with data from Becker and Silbiger (2020) ####
### Created by: Leah Reichert #############
### Updated on: 2023-02-23 ####################


#### Load Libraries###
library(tidyverse)
library(here)
library(lubridate)#deals with dates and times 


#### Load Data ####
# Cond data 
CondData <- read_csv(here("Week_05","Data", "CondData.csv"))

# Depth Data
Depth_Data <- read_csv(here("Week_05","Data", "DepthData.csv"))

now() # what time is it now 
now(tzone = "EST") # what time is it on the east coast
now(tzone = "GMT") # what time in GMT
today()
am(now()) # is it morning?
leap_year(now()) # is it a leap year?
ymd("2021-02-24")
mdy("02/24/2021")
mdy("February 24 2021")
dmy("24/02/2021")
ymd_hms("2021-02-24 10:22:20 PM")
mdy_hms("02/24/2021 22:22:20")
mdy_hm("February 24 2021 10:22 PM")

# make a character string
datetimes<-c("02/24/2021 22:22:20",
             "02/25/2021 11:21:10",
             "02/26/2021 8:01:52")
datetimes <- mdy_hms(datetimes) # convert to datetimes
month(datetimes)

datetimes<-c("02/24/2021 22:22:20",
             "02/25/2021 11:21:10",
             "02/26/2021 8:01:52")
datetimes <- mdy_hms(datetimes) 
day(datetimes) # extract day
hour(datetimes)
minute(datetimes)
second(datetimes)


