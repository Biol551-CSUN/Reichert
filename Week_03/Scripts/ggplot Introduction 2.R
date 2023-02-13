### Today we are going to plot penguin data ####
### Created by: Leah Reichert #############
### Updated on: 2023-02-09 ####################
library(palmerpenguins)
library(tidyverse)
library(here)
glimpse(penguins) #loading penguin data 
ggplot(data=penguins, # making a plot out of the data 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm)) +
  geom_point()+
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  )
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm)) +
  geom_point()+ 
  geom_smooth()+ # add a best fit line 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  )
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm)) +
  geom_point()+ 
  geom_smooth(method = "lm")+ # a linear model for a best fit line
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) 
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species)) + # group the lines by species 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) 
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + # add color to visualize species
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_viridis_d()
library(praise)
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_viridis_d()+
  scale_x_continuous(limits = c(0,20)) # change limits 
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_viridis_d()+
  scale_x_continuous(limits = c(0,20)) + # set x limits from 0 to 20 
  scale_y_continuous(limits = c(0,50))
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_viridis_d()+
  scale_x_continuous(breaks = c(14, 17, 21)) # tells R what you want labelled on x axis 
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_viridis_d()+
  scale_x_continuous(breaks = c(14, 17, 21), 
                     labels = c("low", "medium", "high")) # changes the labels to the x axis 
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  #scale_color_viridis_d()
  scale_color_manual(values = c("orange", "purple", "green")) # how to chnage the colors of the data points manually
library(beyonce)
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_manual(values = beyonce_palette(2))
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_manual(values = beyonce_palette(10))
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_manual(values = beyonce_palette(10)) +
  coord_flip() # flip x and y axes
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_manual(values = beyonce_palette(10)) +
  coord_fixed() # fix axes
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_manual(values = beyonce_palette(10)) +
  theme_bw() +
  theme(axis.title = element_text(size = 20))
ggplot(data=penguins, 
      mapping = aes(x = bill_depth_mm,
                    y = bill_length_mm,
                    group = species,
                    color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_manual(values = beyonce_palette(10)) +
  theme_bw() +
  theme(axis.title = element_text(size = 20,
                                  color = "red"))
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species)) + 
  geom_point()+ 
  geom_smooth(method = "lm")+ 
  labs(x = "Bill depth (mm)", 
       y = "Bill length (mm)"
  ) +
  scale_color_manual(values = beyonce_palette(10)) +
  theme_bw() +
  theme(axis.title = element_text(size = 20,
                                  color = "red"),
        panel.background = element_rect(fill = "linen")) # fill backrground color 

?theme()


















































