##Purpose: to poste demo data tables (soil.csv and soil_har.csv) into
##        the demo data folder
## code to prepare `soildatademo` dataset goes here

library(tidyverse)
library(devtools)
library(dplyr)
library(tibble)
soil_demo<-read.csv("../Data/03_output/soil_bc_demo.csv")
soil_demo<-soil_demo%>%
  filter(DATA_SOURCE %in% c("BCSIS"))
soil_har_demo <-read.csv("../Data/03_output/soil_har_bc_demo.csv")
soil_har_demo<-soil_har_demo %>%
  filter(DATA_SOURCE == "BCSIS")
site_demo<-read.csv("../Data/03_output/site_bc_demo.csv")
site_demo<-site_demo %>%
  filter(DATA_SOURCE == "BCSIS")

use_data(soil_demo, overwrite = TRUE)
use_data(site_demo, overwrite = TRUE)

