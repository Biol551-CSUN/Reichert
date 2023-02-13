### This is an introduction to ggplot
### Created by: Leah Reichert
### Created on: 2023-02-07
library(palmerpenguins) # install palmerpenguins
library(tidyverse) #load tidyverse
glimpse(penguins)
ggplot(data=penguins) #blank plot 
ggplot(data=penguins, #adding x axis information  
       mapping = aes(x=bill_depth_mm))
ggplot(data=penguins, #adding y axis information 
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm))
ggplot(data=penguins, #adding data points 
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm)) +
  geom_point()
ggplot(data=penguins, #add color to data points 
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm,
                     color=species)) +
  geom_point()
ggplot(data=penguins, #add labels to the graph 
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm,
                     color=species)) +
  geom_point() +
  labs(title="Bill depth and length")
ggplot(data=penguins, # 
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm,
                     color=species)) +
  geom_point() +
  labs(title="Bill depth and length", 
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins")
ggplot(data=penguins, #
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm,
                     color=species)) +
  geom_point() +
  labs(title="Bill depth and length", 
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
       x = "Bill depth (mm)", y = "Bill length (mm)")
ggplot(data=penguins, #
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm,
                     color=species)) +
  geom_point() +
  labs(title="Bill depth and length", 
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
       x = "Bill depth (mm)", y = "Bill length (mm)",
       color = "Species")
ggplot(data=penguins, #
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm,
                     color=species)) +
  geom_point() +
  labs(title="Bill depth and length", 
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
       x = "Bill depth (mm)", y = "Bill length (mm)",
       color = "Species",
       caption = "Source: Palmer Station LTER / palmerpenguins package")
ggplot(data=penguins, #
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm,
                     color=species)) +
  geom_point() +
  labs(title="Bill depth and length", 
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
       x = "Bill depth (mm)", y = "Bill length (mm)",
       color = "Species",
       caption = "Source: Palmer Station LTER / palmerpenguins package") +
       scale_color_virdis_d()
mapping = aes(x = bill_depth_mm,
              y = bill_length_mm,
              color = species)) +
  geom_point()+
  labs(title = "Bill depth and length",
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
       x = "Bill depth (mm)", y = "Bill length (mm)",
       color = "Species") +
  scale_color_viridis_d()
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     color = species)) +
  geom_point()+
  labs(title = "Bill depth and length",
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
       x = "Bill depth (mm)", y = "Bill length (mm)",
       color = "Species") +
  scale_color_viridis_d()    
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     color = species,
                     shape = island
       )) +
  geom_point()+
  labs(title = "Bill depth and length",
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
       x = "Bill depth (mm)", y = "Bill length (mm)",
       color = "Species") +
  scale_color_viridis_d()
ggplot(data=penguins, #added shape 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     color = species,
                     shape = species
       )) +
  geom_point()+
  scale_color_viridis_d()
ggplot(data=penguins, #added body mass size 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     color = species,
                     size = body_mass_g
       )) +
  geom_point()+
  scale_color_viridis_d()
ggplot(data=penguins, # alpha added flipper length 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     color = species,
                     size = body_mass_g,
                     alpha = flipper_length_mm
       )) +
  geom_point()+
  scale_color_viridis_d()
ggplot(penguins, 
       aes(x = bill_depth_mm,
           y = bill_length_mm))+
  geom_point()+
  facet_grid(species~sex) # multiple plot groups by species on the y axis and sex on x axis 
ggplot(penguins, 
       aes(x = bill_depth_mm,
           y = bill_length_mm))+
  geom_point()+
  facet_grid(sex~species) # Inverted from the graph above 
ggplot(penguins, aes(x = bill_depth_mm, y = bill_length_mm)) + 
  geom_point() +
  facet_wrap(~ species)
ggplot(penguins, aes(x = bill_depth_mm, y = bill_length_mm)) + 
  geom_point() +
  facet_wrap(~ species, ncol=2) # tells how many columns 
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     color = species, # adds colors to the species data points 
       )) +
  geom_point()+
  scale_color_viridis_d()+
  facet_grid(species~sex)
ggplot(data=penguins, 
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     color = species,
       )) +
  geom_point()+
  scale_color_viridis_d()+
  facet_grid(species~sex)+
  guides(color = FALSE) # removes legend 











