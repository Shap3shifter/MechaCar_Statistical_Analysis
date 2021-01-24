install.packages("tidyverse")
install.packages("jsonlite")
library(tidyverse)
library(jsonlite)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F, stringsAsFactors = F) #reading in MechaCar_mpg.csv file
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg) #Linear regression about MPG data
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)) #Summary about Linear Regression data for MPG
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names = F, stringsAsFactors =F) #reading in Suspension Coil .csv file
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #Creation of total_summary table
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = "keep") #Creation of lot_summary table
t.test(Suspension_Coil$PSI, mu=1500) #T-Test about the entire Sample Size
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot1"), mu=1500) #T-Test about Lot1
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot2"), mu=1500) #T-Test about Lot2
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot3"), mu=1500) #T-Test about Lot3

