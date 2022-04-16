# Deliverable 1
# load library 
library(dplyr)

#importing the csv file as dataframe
mechacar_table <- read.csv(file='MechaCar_mpg.csv')

# Performing linear regression using lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mechacar_table)

# Determine p value using summary()
summary(lm(mechacar_linearregression))
