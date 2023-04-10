##Part B

library(tidyverse)
library(jsonlite)

##30May
data_NZKR <-readRDS("all_my_data3.rds")

#30May (NZ)
trackIdsNZ30 <-data_NZKR$trackIdNZ30 %>% unique() %>% na.omit()

all_the_data30MayNZ <- map_df(1 : length(trackIdsNZ30), function(i){
  Sys.sleep(2)
  urlNZ <- paste0("https://itunes.apple.com/lookup?id=", trackIdsNZ30[i])
  response <- fromJSON(urlNZ)
  itunes_data <- response$results
})

#30May (KR)
trackIdsKR30 <-data_NZKR$trackIdKR30 %>% unique() %>% na.omit()

all_the_data30MayKR <- map_df(1 : length(trackIdsKR30), function(i){
  Sys.sleep(2)
  urlKR <- paste0("https://itunes.apple.com/lookup?id=", trackIdsKR30[i])
  response <- fromJSON(urlKR)
  itunes_data <- response$results
})



##31May

#31May (NZ)
trackIdsNZ31 <-data_NZKR$trackIdNZ31 %>% unique() %>% na.omit()

all_the_data31MayNZ <- map_df(1 : length(trackIdsNZ31), function(i){
  Sys.sleep(2)
  urlNZ <- paste0("https://itunes.apple.com/lookup?id=", trackIdsNZ31[i])
  response <- fromJSON(urlNZ)
  itunes_data <- response$results
})

#31May (KR)
trackIdsKR31 <-data_NZKR$trackIdKR %>% unique() %>% na.omit()

all_the_data31MayKR <- map_df(1 : length(trackIdsKR31), function(i){
  Sys.sleep(2)
  urlKR <- paste0("https://itunes.apple.com/lookup?id=", trackIdsKR31[i])
  response <- fromJSON(urlKR)
  itunes_data <- response$results
})

itunes_data <- bind_rows(all_the_data30MayNZ, all_the_data30MayKR, all_the_data31MayNZ, all_the_data31MayKR)
saveRDS(itunes_data, "itunes_data2.rds")
