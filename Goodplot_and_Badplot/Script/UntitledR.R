library(ggplot2)
library(emoGG)
View(births)

emoji_search("baby")


  qplot( x = month, y = mean_births, data = births, geom = "point") + add_emoji(emoji = "1f476")
