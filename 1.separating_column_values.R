## Data wrangling
library(tidyverse)

## Styling code
library(styler)

## Import csv Data from file path
screen_data <- read_csv("")

## Have a look at data
head(screen_data)

## Separate the top 5 Apps into their own column
screen_data <- screen_data %>%
  separate(top_five_apps,
    into = c(
      "app_one", 
      "app_two",
      "app_three",
      "app_four",
      "app_five"
    ),
    sep = ","
  )

## Separate top 5 App time/duration into their own columns
screen_data <- screen_data %>%
  separate(top_apps_times,
    into = c(
      "app_one_time",
      "app_two_time",
      "app_three_time",
      "app_four_time",
      "app_five_time"
    ),
    sep = ","
  )


## There might be some white space after separating columns by ","
## str_replace_all from stringr
screen_data$app_three <- str_replace_all(screen_data$app_three,
                                         pattern = " ",
                                         repl = "")
## TO DO: Check data types
