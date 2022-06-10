##Purpose: to poste demo data tables (soil.csv and soil_har.csv) into
##        the demo data folder

library(tidyverse)
library(devtools)
soil_demo<-read.csv("../Data/03_output/soil_bc_demo.csv")
soil_demo %>%
  filter(DATA_SOURCE %in% c("BCSIS","kamloops")) %>%
  count(DATA_SOURCE)
soil_har_demo <-read.csv("../Data/03_output/soil_har_bc_demo.csv")
site_demo<-read.csv("../Data/03_output/site_bc_demo.csv")

use_data(soil_demo, overwrite = TRUE)
use_data(soil_har_demo, overwrite = TRUE)
use_data(site_demo, overwrite = TRUE)
