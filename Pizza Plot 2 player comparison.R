library(worldfootballR)
library(ggshakeR)

data1 <- fb_player_scouting_report("https://fbref.com/en/players/f586779e/Tammy-Abraham", pos_versus = "primary")
data2 <- fb_player_scouting_report("https://fbref.com/en/players/59e6e5bf/Dominic-Calvert-Lewin", pos_versus = "primary")

data <- rbind(data1, data2)

plot <- plot_pizza(data = data, type = "comparison", template = "forward",
                   player_1 = "Tammy Abraham", player_2 = "Dominic Calvert-Lewin",
                   season_player_1 = "Last 365 Days", season_player_2 = "Last 365 Days",
                   colour_compare = "lightgreen", theme = "black")
plot
