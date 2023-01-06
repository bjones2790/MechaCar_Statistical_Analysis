# Deliverable 1

# Load dplyr package
library(dplyr)

# Import MechaCar_mog CSV
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =MechaCar_mpg)

# Summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =MechaCar_mpg)) 

# Deliverable 2

# Import Suspension_Coil CSV
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create total summary group
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Create lot summary group
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') 

# Deliverable 3

# T test for PSI across lots (>=1500)
t.test(Suspension_Coil$PSI, mu=1500)

# T test for PSI across each individual lot (>=1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot1"), mu=1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot2"), mu=1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot3"), mu=1500)

                                         