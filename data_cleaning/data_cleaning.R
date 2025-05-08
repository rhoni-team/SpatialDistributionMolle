# Cleaning molle dataset

# loading libraries
library(dplyr)

# reading the raw data
raw_data <- read.delim("data/0012971-241107131044228.csv", sep = "\t")
head(raw_data, 2)

# Exploring the dataset
colnames(raw_data)
ncol(raw_data) # 50 columns
nrow(raw_data) # 146 observations

# Analyzing the content of some columns
unique(raw_data$countryCode) # always AR
unique(raw_data$occurrenceStatus) # always PRESENT
unique(raw_data$individualCount) # always NA
unique(raw_data$locality) # always NA
unique(raw_data$basisOfRecord) # always HUMAN_OBSERVATION

# selecting only meaningful columns
raw_data %>%
  select("gbifID", "occurrenceID", "stateProvince", 
         "decimalLatitude", "decimalLongitude", 
         "eventDate", "day", "month", "year") %>%
  head()







