# Calculate average and max of ride_length of every month
tripdata_2021_06 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_07 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_08 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_09 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_10 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_11 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_12 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2022_01 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2022_02 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2022_03 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2022_04 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2022_05 %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))


## Calculate average and max of ride_length of every month grouped by member_casual
tripdata_2021_06 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_07 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_08 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_09 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_10 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_11 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2021_12 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2022_01 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2022_02 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2022_03 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2022_04 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))

tripdata_2022_05 %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))


# Calculate average and max of ride_length and the day traveled the most 
tripdata %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))


# Calculate average and max of ride_length and the day traveled the most grouped by member_casual
tripdata %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))
