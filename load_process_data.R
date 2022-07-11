# Install and load the packages
install.packages("tidyverse")
install.packages("rmarkdown")
install.packages("skimr")
install.packages("janitor")
install.packages("ggplot2")
library("tidyverse")
library("rmarkdown")
library("skimr")
library("janitor")
library("ggplot2")
library("lubridate")
library("scales")


# Load the data
tripdata_2021_06 = read_csv("trip_data/202106-divvy-tripdata.csv")
tripdata_2021_07 = read_csv("trip_data/202107-divvy-tripdata.csv")
tripdata_2021_08 = read_csv("trip_data/202108-divvy-tripdata.csv")
tripdata_2021_09 = read_csv("trip_data/202109-divvy-tripdata.csv")
tripdata_2021_10 = read_csv("trip_data/202110-divvy-tripdata.csv")
tripdata_2021_11 = read_csv("trip_data/202111-divvy-tripdata.csv")
tripdata_2021_12 = read_csv("trip_data/202112-divvy-tripdata.csv")
tripdata_2022_01 = read_csv("trip_data/202201-divvy-tripdata.csv")
tripdata_2022_02 = read_csv("trip_data/202202-divvy-tripdata.csv")
tripdata_2022_03 = read_csv("trip_data/202203-divvy-tripdata.csv")
tripdata_2022_04 = read_csv("trip_data/202204-divvy-tripdata.csv")
tripdata_2022_05 = read_csv("trip_data/202205-divvy-tripdata.csv")


# Check the data
head(tripdata_2021_06)
head(tripdata_2021_07)
head(tripdata_2021_08)
head(tripdata_2021_09)
head(tripdata_2021_10)
head(tripdata_2021_11)
head(tripdata_2021_12)
head(tripdata_2022_01)
head(tripdata_2022_02)
head(tripdata_2022_03)
head(tripdata_2022_04)
head(tripdata_2022_05)

colnames(tripdata_2021_06)
colnames(tripdata_2021_07)
colnames(tripdata_2021_08)
colnames(tripdata_2021_09)
colnames(tripdata_2021_10)
colnames(tripdata_2021_11)
colnames(tripdata_2021_12)
colnames(tripdata_2022_01)
colnames(tripdata_2022_02)
colnames(tripdata_2022_03)
colnames(tripdata_2022_04)
colnames(tripdata_2022_05)

glimpse(tripdata_2021_06)
glimpse(tripdata_2021_07)
glimpse(tripdata_2021_08)
glimpse(tripdata_2021_09)
glimpse(tripdata_2021_10)
glimpse(tripdata_2021_11)
glimpse(tripdata_2021_12)
glimpse(tripdata_2022_01)
glimpse(tripdata_2022_02)
glimpse(tripdata_2022_03)
glimpse(tripdata_2022_04)
glimpse(tripdata_2022_05)

# Uniting the lat_long columns into a single column
tripdata_2021_06 = tripdata_2021_06 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2021_07 = tripdata_2021_07 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2021_08 = tripdata_2021_08 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2021_09 = tripdata_2021_09 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2021_10 = tripdata_2021_10 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2021_11 = tripdata_2021_11 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2021_12 = tripdata_2021_12 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2022_01 = tripdata_2022_01 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2022_02 = tripdata_2022_02 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2022_03 = tripdata_2022_03 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2022_04 = tripdata_2022_04 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")

tripdata_2022_05 = tripdata_2022_05 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")


# Not all the ride_length is the same type
# We'll convert all ride_length to duration
tripdata_2021_06$ride_length = as.duration(hms(tripdata_2021_06$ride_length))
tripdata_2021_07$ride_length = as.duration(hms(tripdata_2021_07$ride_length))
tripdata_2021_08$ride_length = as.duration(hms(tripdata_2021_08$ride_length))
tripdata_2021_09$ride_length = as.duration(hms(tripdata_2021_09$ride_length))
tripdata_2021_10$ride_length = as.duration(hms(tripdata_2021_10$ride_length))
tripdata_2021_11$ride_length = as.duration(hms(tripdata_2021_11$ride_length))
tripdata_2021_12$ride_length = as.duration(hms(tripdata_2021_12$ride_length))
tripdata_2022_01$ride_length = as.duration(hms(tripdata_2022_01$ride_length))
tripdata_2022_02$ride_length = as.duration(hms(tripdata_2022_02$ride_length))
tripdata_2022_03$ride_length = as.duration(hms(tripdata_2022_03$ride_length))
tripdata_2022_04$ride_length = as.duration(hms(tripdata_2022_04$ride_length))
tripdata_2022_05$ride_length = as.duration(hms(tripdata_2022_05$ride_length))

# Merging all the data into a single table
tripdata = bind_rows(tripdata_2021_06,
                     tripdata_2021_07,
                     tripdata_2021_08,
                     tripdata_2021_09,
                     tripdata_2021_10,
                     tripdata_2021_11,
                     tripdata_2021_12,
                     tripdata_2022_01,
                     tripdata_2022_02,
                     tripdata_2022_03,
                     tripdata_2022_04,
                     tripdata_2022_05)


# Visualize the data
View(tripdata)
head(tripdata)
colnames(tripdata)
glimpse(tripdata)