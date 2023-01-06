# MechaCar Statistical Analysis


## Linear Regression to Predict MPG
<img width="953" alt="Deliverable 1" src="https://user-images.githubusercontent.com/112994018/210687617-b0bfb248-765b-449b-a6a9-ab0806bf7730.png">

This analysis consist of a linear model to predict mpg for 50 MechaCar prototypes. Metrics include vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. Results are as follows:

1) Both vehicle clearance and ground clearance provided a non-random amount of variance to the mpg values in the dataset.
2) The slope of the linear model is not considered to be zero due to the p-value of 5.35e-11, or 0.0000000000535, being smaller than the target of .05 significance.
3) This model has an r-squared value of .7149 meaning over 70 percent of the results can be used to predict mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils
![summary](https://user-images.githubusercontent.com/112994018/210687861-0ce15851-47e7-4342-a4cb-174a192de229.png)
![lot summary](https://user-images.githubusercontent.com/112994018/210687869-9274ca8d-8629-4d5a-80a2-02c601737c79.png)

This analysis generated summary statistics on suspension coils across the various lots to determine if variance levels were below 100 pounds per square inch. Results revealed that the overall variance across each lot was below this threshold (62.29). The analysis of the individual lots, however, revealed that Lot 3 exceeded this level (170.28) which is perhaps a cause of concern. 

## T-Tests on Suspension Coils
![PSI test All](https://user-images.githubusercontent.com/112994018/210688158-901e7e89-6f32-4078-9634-11316bcee184.png)
![PSI Test Across lots](https://user-images.githubusercontent.com/112994018/210688166-09315450-3258-45a0-8ffa-42c34c9f85db.png)

This analysis performed a t-test to determine if all manufacturing lots and each individual lots are statistically different from the population mean of 1,500 lbs per square inch. Overall, the p-value across all lots was .06 meaning we do not have enough evidence to reject the null hypothesis. When looking at each individual lot, Lots 1, 2, and 3 hada p-value of 1, .06, and .04 respectively. Of the three lots, onl Lot 3 had a p-value that could reject the null hypothesis, although more analysis should probably occur before making that determination. 

## Study Design: MechaCar vs Competition

An additional statistical study can look to compare if maintenence costs differ depending on vehicle make and model. Using this analysis, one could perform an Linear regression modesl to test differences across each group. The null hypothesis is "Domestic vehicle types have lower maintenece costs compared to foreign models" while the alternative hypothesis is "Domestic vehicle types do not have lower maintenence costs than foreign models". Data needed to run this analysis includes average maintence costs for cars with mileage under 150k miles, meaning additonal stats on mileage, vehicle make and model, and maintenece costs are needed to test the hypotheses. 


