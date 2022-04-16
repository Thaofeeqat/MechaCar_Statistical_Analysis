# Deliverable 1
# load library 
library(dplyr)

#importing the csv file as dataframe
mechacar_table <- read.csv(file='MechaCar_mpg.csv')

# Performing linear regression using lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mechacar_table)

# Determine p value using summary()
summary(lm(mechacar_linearregression))

# DELIVERABLE 2
#Importing the suspension_coil.csv file as table
Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv')
# create a total_summary dataframe using the summarize to show the KPIs
total_summary <- Suspension_Coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# creating lot_summary using groupby() and summarize()
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

