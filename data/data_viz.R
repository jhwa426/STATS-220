##Part D

library(tidyverse)

song_data<-readRDS("song_data.rds")


mutated_data <- song_data %>% mutate(PopGenre = ifelse(str_detect(str_to_lower(primaryGenreName), "pop"),"Yes","No")) %>% slice(1:50)

plot <- ggplot(data = mutated_data) + geom_jitter(aes(x = artistName, y = PopGenre, colour = PopGenre)) + labs(title = "Which artist is more interested in pop music?", x = "Artist Name", y = "Pop music popularity", caption = "Data source : Apple music playlist") + theme(panel.background = element_rect(fill = "#E8F9FD"))



ggsave("song_vis.png", width = 12, height = 5, units = "in")