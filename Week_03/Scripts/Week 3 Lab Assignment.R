### Today we are going to plot penguin data ####
### Created by: Leah Reichert #############
### Updated on: 2023-02-12 ####################
# load the following packages before starting 
library(tidyverse)
library(palmerpenguins)
library(here)
library(beyonce)
library(ggthemes)
# body mass and sex for each adelie species 
glimpse(penguins) #load data 
summary(penguins)

quantify_data<-ggplot(data=penguins,
                      mapping=aes(x=sex,y=body_mass_g,
                                  fill=sex))+
  geom_boxplot()+
  labs(x="sex",y="Body Mass (g)",
       title="Quantify the Body Mass of Penguins")
facet_grid(~species)+ 
  scale_fill_manual(values=beyonce_palette(7))+
  theme_stata()+
  theme(axis.title=element_text(size=15),
        panel.background==element_rect("gray"))
ggsave(here("Week_03","Output","sex.png"),
       width=7, height=5)

