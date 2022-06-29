# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<img width="710" alt="Linear Regression" src="https://user-images.githubusercontent.com/101602688/176554817-02bd2562-0336-4e5b-b427-6d66b149fe52.png">

<img width="679" alt="Linear_Regression Summary" src="https://user-images.githubusercontent.com/101602688/176554910-f4daed73-9925-43c8-88f6-85cb9ef21da0.png">


* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    Vehicle Length and Ground Clearance are two variables that provide a non-random amount of variance to the MPG values in the dataset. This is because the p-value of the coefficients are less than our assumed significance level of .05. This shows both these variables have an influence on mpg. 

* Is the slope of the linear model considered to be zero? Why or why not?

    The slope of this linear model is not zero as the p-value of the overall linear model is 5.35e-11 which is much smaller than our assumed significance level of 0.05. This means we reject the null hypothesis therefore the slope cannot be 0. 

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    The R squared value of this model is .71 which indicates 71% of mpg predictions will be accurate in the model based on the independent variables. Therefore, this linear model does effectively predict mpg of MechaCar prototypes effectively. 

## Summary Statistics on Suspension Coils
<img width="346" alt="Total_Summary" src="https://user-images.githubusercontent.com/101602688/176554970-6c33c984-f94f-4333-850f-ef6d0b6af662.png">

<img width="534" alt="Lot_Summary" src="https://user-images.githubusercontent.com/101602688/176554998-a99f1ee1-2dd1-42db-a7d5-2222e8122719.png">


* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

    The overall variance of the suspension coils is 62.29 pounds per square inch whihc is far smaller than the 100 pounds per sqaure inch requirement. However, when looking at lots individually, lot 3 has a variance of 170 pounds per square inch, thus lot 3 does not meet the design specification. 


## T-Tests on Suspension Coils

The first T-test that was performed analyzed if the PSI in every manufacturing lot was statistically different from a population mean of 1500. From the image below, the p-value of this test was 0.06 which is greater than our assumed significance level of 0.05. Therefore, we fail to reject our null hypothesis, concluding the PSI across every lot is NOT stastistically different than the mean of 1500. 

<img width="521" alt="Screen Shot 2022-06-29 at 5 17 50 PM" src="https://user-images.githubusercontent.com/101602688/176555169-6445274c-37ff-492e-9abd-c279ebae5b85.png">


The next tests were performed on each individual lot against the population mean of 1500. 

* Lot 1
    * Lot 1 has a p-value of 1 and a sample mean of 1500 which is identical to the population mean. This gives us enough evidence to conclude the there is NO statistical difference in the sample and population mean. 

* Lot 2
    * The p-value of this test was 0.60 which is far greater than the assumed significance level of 0.05. This shows the PSI in Lot 2 is not statistically different than the population mean of 1500. 

* Lot 3
    * Lot 3 bucks the trend observed in Lots 1 and 2. The p-value of this test was 0.04 which is less than the assumed significance level of 0.05. This means we reject the null hypothesis and conclude the PSI in this lot is different than the population mean of 1500. This lot does not meet the design specifications and should be inspected further. 

<img width="433" alt="Lot1" src="https://user-images.githubusercontent.com/101602688/176555025-06e99a6b-a225-449c-ac3d-32c312d17d20.png">
<img width="487" alt="Lot2" src="https://user-images.githubusercontent.com/101602688/176555039-4fdbb614-f761-4337-89f6-f4366544f1fa.png">
<img width="525" alt="Lot3" src="https://user-images.githubusercontent.com/101602688/176555055-a5809441-2527-4965-aefc-f10677428c73.png">


## MechaCar vs Competition 

This study is designed to compare performance of the MechaCar vehicles against its competition. In order to do so, this test will analyze if the price of MechaCar vehicles are fair when compared to a variety of metrics

Metrics to test:

Data will need to be collected from all of MechaCar's competitors. The specific metrics in this study will be:

* Safety Feature Rating
* MPG
* Engine type (electic, hybrid)
* Maintenance Cost 

The dependent variable will be Current Selling Price. 

Hypotheses:

Null Hypothesis (Ho): MechaCar's selling price is fair based on performance in key metrics 

Alternative Hypothesis (Ha): MechaCar's selling price is not priced fairly based on performance in key metrics 

Type of statistical test: 

This test will be performed through multiple linear regression as it will show which coefficients have the biggest influence on selling price as well as which variables will allow us to predict selling price most effectively. 
