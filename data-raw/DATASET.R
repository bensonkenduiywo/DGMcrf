## code to prepare `DATASET` dataset goes here
library(raster)
crfdemo <- brick("D:/Dummy/Input/LC08_P168R060_2014_08_14_B1toB7stack_Clip_ENVI")
crfdemo <- readAll(crfdemo)
usethis::use_data(crfdemo, overwrite = T)
