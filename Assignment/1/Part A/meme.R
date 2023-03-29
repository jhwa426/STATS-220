# Develop R code within the meme.R file to create a new/original meme. Your R code needs to demonstrate the following:

# Execute magick library
library(magick)

# Read image file 1 (flags), adjust image size and annotate text on image file.
flags <- image_read("https://www.brown.edu/sites/g/files/dprerj316/files/styles/wide_xlrg/public/2022-02/ukraine-russia-flags.jpg?h=cc556458&itok=8KfvUTf5") %>% image_scale(700) %>% image_annotate(text = "No war !", size = 100, gravity = "center", color = "red")

# Read image file 2 (peace), adjust image size and annotate text on image file.
peace <- image_read("https://universitytimes.ie/wp-content/uploads/2021/10/globenew-e1635333924716.jpg") %>% image_scale(400) %>% image_annotate(text = "PEACE ON EARTH!", size = 30, gravity = "center", color = "black")

# Assign two images to a new variable
noWar <- c(flags, peace)

# Have look at the preview!
noWar

# Combine two images.
image_append(noWar, stack = TRUE)
