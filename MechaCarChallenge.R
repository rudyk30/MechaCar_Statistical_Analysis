#step 3

library(dplyr)

#step 4

mecha_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#step 5
head(mecha_mpg)
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_mpg)

#step 6

lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_mpg) %>% summary()


#Delieverable 2

#step 1
suspense_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#step 2
total_summary <- suspense_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                           .groups = 'keep') 
head(total_summary)

#step 3
lot_summary <- suspense_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                          .groups = 'keep')    

head(lot_summary)

#Delieverable 3

#step 1
t.test(suspense_coil$PSI,mu=1500)

#step 2
lot1 <- subset(suspense_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspense_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspense_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

