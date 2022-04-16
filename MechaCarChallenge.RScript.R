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

# using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil_table$PSI, mu=1500)
# writing more t.test and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
lot1 <- subset(Suspension_Coil_table, Manufacturing_Lot == 'Lot1')
t.test(lot1$PSI, mu=1500)
lot2 <- subset(Suspension_Coil_table, Manufacturing_Lot == 'Lot2')
t.test(lot2$PSI, mu=1500)
lot3 <- subset(Suspension_Coil_table, Manufacturing_Lot == 'Lot3')
t.test(lot3$PSI, mu=1500)
