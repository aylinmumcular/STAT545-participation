#read excel file

library("here")
data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/greatestGivers.xls"

#read_csv can directly import URLs but read_excel requires you to first download it
#This is the old way
download.file(url=data_url, destfile = paste('./datasets/', file_name))

#recommendation: Use "basename"

#Task: Change above to use the "here::here" package
download.file(url=data_url, destfile=here::here("test", "greatestGivers.xls"))

file_name <- basename(data_url) #interesting function to get the filename from a URL
file_name

#assign the imported data to a tibble
library(readxl)
philanthropists <- read_excel(here::here("datasets", file_name),trim_ws = TRUE)
view(philanthropists)

head(philanthropists)

library("tidyverse")
library("here")
library("readxl")

mri_file = here("datasets", "Firas-MRI.xlsx")

mri <- read_excel(mri_file, range = "A1:L12")
view(mri)

mri <- mri %>% 
  pivot_longer(cols = 'slice 1':'slice 8', names_to = 'slice_no', values_to = 'value')