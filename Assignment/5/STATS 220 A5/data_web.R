##Part A

library(tidyverse)
library(rvest)


#New Zealand 
urlNZ <- "https://music.apple.com/nz/playlist/top-100-new-zealand/pl.d8742df90f43402ba5e708eefd6d949a"
page <- read_html(urlNZ)

trackIdNZ30 <- page %>%
  html_elements(".songs-list") %>%
  html_elements("a") %>%
  html_attr("href") %>%
  .[str_detect(., "song")] %>%
  str_remove_all("https://music.apple.com/nz/song/")

data_NZ_30_May <- tibble(trackIdNZ30)


#South Korea
urlKR <- "https://music.apple.com/us/playlist/top-100-south-korea/pl.d3d10c32fbc540b38e266367dc8cb00c"
page <- read_html(urlKR)

trackIdKR30 <- page %>%
  html_elements(".songs-list") %>%
  html_elements("a") %>%
  html_attr("href") %>%
  .[str_detect(., "song")] %>%
  str_remove_all("https://music.apple.com/us/song/")

data_KR_30_May <- tibble(trackIdKR30)


#New Zealand 
urlNZ <- "https://music.apple.com/nz/playlist/top-100-new-zealand/pl.d8742df90f43402ba5e708eefd6d949a"
page <- read_html(urlNZ)

trackIdNZ31 <- page %>%
  html_elements(".songs-list") %>%
  html_elements("a") %>%
  html_attr("href") %>%
  .[str_detect(., "song")] %>%
  str_remove_all("https://music.apple.com/nz/song/")

data_NZ_31_May <- tibble(trackIdNZ31)


#South Korea
urlKR <- "https://music.apple.com/us/playlist/top-100-south-korea/pl.d3d10c32fbc540b38e266367dc8cb00c"
page <- read_html(urlKR)

trackIdKR31 <- page %>%
  html_elements(".songs-list") %>%
  html_elements("a") %>%
  html_attr("href") %>%
  .[str_detect(., "song")] %>%
  str_remove_all("https://music.apple.com/us/song/")

data_KR_31_May <- tibble(trackIdKR31)

#Test
all_data <- tibble(data_NZ_30_May, data_KR_30_May, data_NZ_31_May, data_KR_31_May)
#all_data <- bind_rows(data_NZ_30_May, data_KR_30_May)

saveRDS(all_data, "all_my_data3.rds")


