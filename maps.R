### This is the stump script to read the data and plot the maps
### You have to write the code suggested here.
### Feel free to follow the ideas in a different manner/in a different file.
### However, you have to submit your main code file.
###
### The file must be executable on the server!
### I.e. someone else must be able to just run it with 'Rscript maps.R'
### /on server/ and get the correct output.
library(dplyr)
library(ggplot2)
library(tidyr)
library(stringr)
library(maps)
library(mapproj)

# Use `map_data()` to load the `county` map of the US, storing it in a variable 
# `counties.map`
counties.map <- map_data("county")



## read the data
climateall <- read.csv("temp_prec_small.csv", sep = '\t', header = TRUE)

## hint1: figure out the correct format and use the correct function.
##
## hint2: read.table and friends are slow (about 6 min to read data).
## You may use data.table::fread instead (a few seconds)


## filter out North American observations


## delete the original (large data) from R workspace
## this is necessary to conserve memory.


## -------------------- do the following for 1960, 1987, 2014 and temp/precipitation --------------------
only1960<- filter(climateall, time == "1960-07-01")

ggplot(data = only1960) +
  geom_point(mapping = aes(x = longitude, y = latitude, color = airtemp)) +
  coord_map()
ggsave("1960airtemp.png")

ggplot(data = only1960) +
  geom_point(mapping = aes(x = longitude, y = latitude, color = precipitation)) +
  coord_map()
ggsave("1960pre.png")

only1987<- filter(climateall, time == "1987-07-01")
ggplot(data = only1987) +
  geom_point(mapping = aes(x = longitude, y = latitude, color = airtemp)) +
  coord_map()
ggsave("1987airtemp.png")

ggplot(data = only1987) +
  geom_point(mapping = aes(x = longitude, y = latitude, color = precipitation)) +
  coord_map()
ggsave("1987pre.png")

only2014<- filter(climateall, time == "2014-07-01")
ggplot(data = only2014) +
  geom_point(mapping = aes(x = longitude, y = latitude, color = airtemp)) +
  coord_map()
ggsave("2014airtemp.png")

ggplot(data = only2014) +
  geom_point(mapping = aes(x = longitude, y = latitude, color = precipitation)) +
  coord_map()
ggsave("2014pre.png")

## select jpg graphics device

## select the correct year - plot longitude-latitude and color according to the temp/prec variable
## I recommend to use ggplot() but you can use something else too.
## 
## Note: if using ggplot, you may want to add "+ coord_map()" at the end of the plot.  This
## makes the map scale to look better.  You can also pick a particular map projection, look
## the documentation.  (You need 'mapproj' library).
## Warning: map projections may be slow (several minutes per plot).

## close the device

## -------------------- you are done.  congrats :-) --------------------

