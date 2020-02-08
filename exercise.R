# Exercise 5: dplyr grouped operations

# Install the `"nycflights13"` package. Load (`library()`) the package.
# You'll also need to load `dplyr`
#install.packages("nycflights13")  # should be done already
library("nycflights13")
library("dplyr")

# What was the average departure delay in each month?
# Save this as a data frame `dep_delay_by_month`
# Hint: you'll have to perform a grouping operation then summarizing your data
flights %>%
  monthly_delay <- group_by(month)
  summarize(
    monthly_delay,
    mean_month_delay = mean(dep_delay, na.rm = TRUE),
  ) %>%
  fliter(mean_month_delay == max(mean_month_delay))
  plot(monthly_delay)

# Which month had the greatest average departure delay?
flight %>%
  group_by(dest) %>%
  summarize(
    ave_arr_delay = mean(arr_delay, na.rm = TRUE)
  ) %>%
  View()

# If your above data frame contains just two columns (e.g., "month", and "delay"
# in that order), you can create a scatterplot by passing that data frame to the
# `plot()` function


# To which destinations were the average arrival delays the highest?
# Hint: you'll have to perform a grouping operation then summarize your data
# You can use the `head()` function to view just the first few rows


# You can look up these airports in the `airports` data frame!
airports %>%
  filter(faa == "CAE")

# Which city was flown to with the highest average speed?
flights %>%
  group_by(dest) %>%
  summarize(
    ave_speed = mean(distance/air_time, na.rm = TRUE)
  ) %>%
  filter(ave_speed == max(ave_speed, nana.rm = TRUE))
