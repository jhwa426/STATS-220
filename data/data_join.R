##Part C

library(tidyverse)

apple_data30May_31May <- readRDS("all_my_data3.rds") %>% mutate(trackIdNZ30 = as.character(trackIdNZ30))
itunes_data <- readRDS("itunes_data2.rds") %>% mutate(trackId = as.character(trackId))


song_data <- inner_join(apple_data30May_31May, itunes_data, by = c("trackIdNZ30"= "trackId"))

saveRDS(song_data, "song_data.rds")