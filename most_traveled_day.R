# Number of trips per weekday
tripdata_2021_06 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2021_07 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2021_08 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2021_09 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2021_10%>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2021_11 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2021_12 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2022_01 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2022_02 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2022_03 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2022_04 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

tripdata_2022_05 %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

# Number of trips per weekday grouped by member_casual
tripdata_2021_06 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2021_07 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2021_08 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2021_09 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2021_10%>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2021_11 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2021_12 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2022_01 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2022_02 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2022_03 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2022_04 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

tripdata_2022_05 %>% 
  group_by(day_of_week, member_casual) %>% 
  count(day_of_week) %>% 
  arrange(member_casual,-n)

# Number of trips per weekday over the year
tripdata %>% 
  group_by(day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(-n)

# Number of trips per weekday grouped by member_casual over the year
tripdata %>% 
  group_by(member_casual, day_of_week) %>% 
  count(day_of_week) %>% 
  arrange(member_casual, -n)
