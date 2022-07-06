library(worldfootballR)
library(ggshakeR)

data <- fb_player_scouting_report("https://fbref.com/en/players/f586779e/Tammy-Abraham", pos_versus = "primary")
  

plot <- plot_pizza(data = data, type = "single", template = "forward", 
                   colour_poss = "#41ab5d", colour_att = "#2171b5", season = "Last 365 Days", 
                   colour_def = "#fec44f", theme = "dark")
plot
