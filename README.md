# Cyclistic Bike Share Case Study

### Table of Content

- [Scenario](#Scenario)
- [Cleaning data](#Cleaning-data)
- [Processing data](#Processing-data)
- [Analyze phaze](#Analize-phaze)
- [Bibliography](#Bibliography)
- [Data visualization](#Data-visualization)

## Scenario

The director of marketing believes the company Cyclistic’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.

### Goal

After this case study we want to find out:

- How do annual members and casual riders use Cyclistic bikes differently?

## Cleaning data

First trim the columns(that need to) to get rid of the extra spaces.
Remove the duplicate rows.

There are trips that started after they ended, which is immposible. So those rows need to be removed.

Set the type of the *start_at* and *ended_at* to a date format.

## Processing data

To understand the difference between annual members and casual riders we’ll create 2 new columns. One will be called *ride_length* to calculate the length of each ride. This column will be formated as **Time(37:30:55)**. The second column will calculate the day of the week that each ride started. This column will be called *day_of_week*. To calculate this column will use the formula **=TEXT(WEEKDAY(C2,2),"dddd")** . After this steps the data is clean and ready to be analyzed.

We are ready to import the data to R. We'll save every month spreadsheet in 12 variables and then we'll merge them all into a single variable.

```r
tripdata_2021_06 = read_csv("trip_data/202106-divvy-tripdata.csv")
```

## Analyze phaze

We can combine the latitude and longitude columns into a single column.

```r
tidydata_2021_06 %>% 
  unite(start_lng_lat, c(start_lng, start_lat), sep="-") %>% 
  unite(end_lng_lat, c(end_lng, end_lat), sep="-")
```

After analyzing the data with **glimpse** we discover that *ride_length* doesn't have consistent type over the variables. 
To solve this problem we'll turn *ride_length* from chr/time to duration.

```r
tripdata_2021_06$ride_length = as.duration(hms(tripdata_2021_06$ride_length))
```

The data is ready to merge, so we'll do that then.

```r
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
```

Now we'll run some syntaxes to find information about the data.

```r
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
  

# Calculate average and max of ride_length and the day traveled the most 
tripdata %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))


# Calculate average and max of ride_length and the day traveled the most grouped by member_casual
tripdata %>% 
  group_by(member_casual) %>% 
  summarise(mean_ride = mean(ride_length, na.rm=T),
            max_ride = max(ride_length,na.rm=T))
```

## Data visualization

<img src="https://github.com/PaulaB03/-Cyclistic-Bike-Share-Case-Study/blob/master/avg_trips_per_day.png">

<img src="https://github.com/PaulaB03/-Cyclistic-Bike-Share-Case-Study/blob/master/number_trips_pie.png">

<img src="https://github.com/PaulaB03/-Cyclistic-Bike-Share-Case-Study/blob/master/trips_per_month.png">

<img src="https://github.com/PaulaB03/-Cyclistic-Bike-Share-Case-Study/blob/master/trips_per_weekday.png">

## Bibliography

This case study was provided by **Google Data Analytics Professional Certificate** on Coursera. The data has been made available by Motivate International Inc.
