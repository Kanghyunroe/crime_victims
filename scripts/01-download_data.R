## PREAMBLE ##
# Purpose: Downloads and saves the data pertaining to the victims of crime
# Author: Kevin Roe 
# Date: 18 September 2024
# Contact: kevin.roe@mail.utoronto.ca 
# Pre-requisites: Know where to get victims of crime data

#### Workplace setup ####
# install.packages("tidyverse")
# install.pacakges("opendatatoronto")
library(tidyverse)
library(opendatatoronto)

#### Download data ####
raw_victims_data <- 
  read_csv(
    file = 
      "https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/police-annual-statistical-report-victims-of-crime/resource/1cee98a2-f540-444a-a29b-a825ad1596ca/download/Victims%20of%20Crime.csv",
    show_col_types = FALSE,
  )

#### Save data ####
write_csv(
  x = raw_victims_data,
  file = "victims_of_crime"
  )

