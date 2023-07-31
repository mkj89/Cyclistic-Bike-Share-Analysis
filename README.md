# Cyclistic-Bike-Share-Analysis
This project represents an in-depth analysis of Cyclistic, a thriving bike-sharing company. As a data analyst for Cyclistic, my role was to leverage data in order to understand how customers interact with the bike-sharing service. The goal of the study was to find out how annual members and casual riders differ in their usage patterns and give recommendations for the marketing strategy.
## Table of Contents
- [Introduction](#introduction)
- [Business Task](#business-task)
- [Data](#data)
- [Data Processing and Cleaning](#data-processing-and-cleaning)
-  [Analysis and Visualization](#analysis-and-visualization)
-   [Conclusion and Recommendations](#conclusion-and-recommendations)

## Introduction

The Google Data Analytics Certification course has equipped me with a variety of skills, all culminating in this capstone project. As a Junior Data Analyst at Cyclistic, a major bike-sharing company, I was given the opportunity to dig deep into a comprehensive dataset and extract insightful knowledge.

Cyclistic categorizes its riders into two distinct types: "casual" members, who sporadically use the service via individual passes, and subscribers, who maintain a long-term commitment with annual memberships. Stationed in a major city, Cyclistic operates an extensive network of around 6,000 bicycles across 700 stations. A key growth factor for Cyclistic lies in maximizing its number of annual subscribers, a strategy that promises sustained customer engagement and financial stability.

The objective of this analysis is to unearth valuable insights that could guide effective marketing strategies aimed at transforming casual members into annual subscribers.

## Business Task
In this role, my task is to explore and understand the differences in how annual subscribers and casual members use Cyclistic bikes. The exploration is guided by the following three questions, which aim to inform future marketing strategies:
+ How do annual subscribers and casual members use Cyclistic bikes differently?
+ Why would casual members buy Cyclistic annual memberships?
+ How can Cyclistic use digital media to influence casual members to become subscribers?

## Data
The data used for this analysis comes from Cyclistic’s historical trip data, which are public data provided by Motivate International Inc., the Divvy Bicycle Sharing Service from Chicago, under this [license](https://www.divvybikes.com/data-license-agreement). The dataset, available in .csv format, comprises individual ride records. This dataset includes information such as ride start-end date & time, station information, bike type, and user type (casual member/subscriber). My analysis focuses on data from July 2022 to June 2023.

## Data Processing and Cleaning

The data processing and cleaning phase involved importing the data into Google Cloud Storage (GCS) and then into BigQuery for analysis using SQL. During this process, the initial dataset of 5,779,444 entries was cleaned, leaving 4,409,269 records. This cleaning was done using [this query](sql/bike_daata_clean) to ensure that specific fields did not include null values and that the started_at timestamp was not later than the ended_at timestamp. The cleaned fields include ride_id, start_station_name, end_station_name, start_day, started_at, ended_at, and member_casual.

After the cleaning and consolidation process, the dataset was ready for analysis.

## Analysis and Visualization

In the analysis and visualization phase, I delved into the cleaned dataset to observe differential trends between casual members and annual subscribers. The visualizations were developed in Looker (formerly known as Google Data Studio) to better comprehend and communicate these trends and patterns.

#### Annual Subscribers vs Casual Users

![viz/Annual Subscribers vs Casual Users.png](https://github.com/mkj89/Cyclistic-Bike-Share-Analysis/blob/main/viz/Annual%20Subscribers%20vs%20Casual%20Users.png)

The first graph I created shows the distribution of riders:

+ 62% of total rides, equating to roughly 2.7 million rides, were taken by annual subscribers.
+ 38% of total rides, or approximately 1.6 million rides, were taken by casual riders.

Although casual riders make up a significant portion of the company's business, annual subscribers form the majority. 
Thus, strategies aimed at increasing annual subscriptions should be a focus in the long run.

#### Weekly distribution of rides
In reviewing the weekly distribution of rides, some fascinating patterns emerge.

![viz/Weekly distribution of rides.png](https://github.com/mkj89/Cyclistic-Bike-Share-Analysis/blob/main/viz/Weekly%20distribution%20trips.png)
+ Casual riders use the service more frequently during the weekends, while the subscribers demonstrate a steady usage throughout the week with a decrease during the weekend.
+ Despite the decline in subscriber rides during the weekend, they still match the number of rides taken by casual riders. 
+ However, considering that the dataset contains significantly more subscribers than casual riders, the same number of weekend rides means a larger percentage of total rides for casual riders compared to subscribers.
+ Casual riders, thus, tend to use the bike rentals more for leisure purposes, as evident from the higher number of trips over the weekend. 
+ In contrast, the subscribers' usage remains relatively consistent throughout the week, indicating their reliance on the service for regular commuting.

These observations suggest that Cyclistic plays a pivotal role in both the daily commuting routines of subscribers and the recreational activities of casual riders. 
Therefore, marketing strategies should emphasize both the practical commuting advantages for potential subscribers and the fun, leisure aspect of bike riding for converting casual riders into subscribers. 

#### Weekly distribution of rides

The next aspect of the study concerns the average ride duration.

![Trip duration during the week](https://github.com/mkj89/Cyclistic-Bike-Share-Analysis/blob/main/viz/Trip%20duration%20week%20day.png)

+ The analysis indicates that casual riders generally spend more time per ride than annual subscribers. Specifically, casual riders take about double the time, averaging 22 minutes per ride, compared to the 11-minute average for annual subscribers.
+ Furthermore, the average ride duration for casual riders is higher during the weekend and lowest on Wednesdays. This could be attributed to leisurely, non-time-bound trips undertaken over the weekend, whereas shorter, time-efficient trips could be a priority during the weekdays.
+ Interestingly, annual subscribers' average ride duration is mostly steady throughout the week, with only a slight increase on Saturdays. This consistent ride duration suggests that subscribers use the service in a routine, predictable manner, possibly as part of their daily commute or regular activities.

The insights gathered so far reveal that casual riders' usage tends to be more leisure-driven and less predictable, while annual subscribers exhibit more routine, consistent use of the service. These trends should be taken into account when devising strategies for converting casual riders into subscribers. For example, marketing efforts could highlight the benefits of a Cyclistic subscription for casual riders who want to increase their usage or use the service in a more routine manner.

#### Weekly distribution of rides
A deeper dive into the relationship between ride duration and ride distance further shows the differences between casual riders and annual subscribers.

![Trip duration](https://github.com/mkj89/Cyclistic-Bike-Share-Analysis/blob/main/viz/Trip%20duration.png)
![Trip distance](https://github.com/mkj89/Cyclistic-Bike-Share-Analysis/blob/main/viz/Screenshot%202023-07-31%20at%2011-45-51%20Annual%20Subscribers%20vs%20Casual%20Users.png)
+ Despite casual riders spending about twice as long on their rides compared to annual subscribers (22 minutes versus 11 minutes), both groups tend to cover similar average distances.
+ This divergence between ride duration and distance could imply that casual riders tend to take a more leisurely pace or possibly engage in more stop-and-go activities, whereas annual subscribers might be using the service more for point-to-point transportation or efficient commuting.

The insights from this part of the analysis underscore the importance of understanding user behavior in depth when trying to convert casual riders into subscribers. The marketing strategy could benefit from emphasizing the efficiency of the service for point-to-point transportation to casual riders who might be contemplating a subscription.

#### Hourly distribution of rides
As we delve further into the hourly distribution of rides, additional patterns emerge that highlight the different usage habits of casual riders and annual subscribers.
![Popular times day](https://github.com/mkj89/Cyclistic-Bike-Share-Analysis/blob/main/viz/Popular%20time.png)
+ The most pronounced peak occurs around 5 pm, indicating a significant proportion of bike usage during the typical end of the workday. This finding aligns with the idea that many subscribers use the bike service for commuting.
+ Another smaller but noticeable surge in usage happens around 8 am, presumably reflecting the start of a typical workday. Despite this morning peak being only half as significant as the evening peak, it still highlights an essential commuting trend among subscribers.
+ Between the late-night hours and early morning (roughly from 2 am to 5 am), bike usage hits its lowest. This quiet period precedes a gradual increase in usage that begins around 5 am, likely marking the start of users' daily activities.
+Interestingly, there's a slight dip in usage between 9 and 10 am. Following this dip, usage begins to rise again and continues to grow until it reaches the high point in the evening.

These observations emphasize the different behaviors of casual riders and annual subscribers. While casual riders seem to use the service for leisure and spontaneous activities, subscribers lean more towards using it for their daily commute. This understanding can inform targeted marketing strategies that cater to the unique needs and usage patterns of each user group.

### Seasonality
Let's dive further into the monthly distribution of the number of rides to understand the seasonality of bike usage.
![Seasonality](https://github.com/mkj89/Cyclistic-Bike-Share-Analysis/blob/main/viz/Popularity%20month.png)
+ The dataset reveals a marked seasonality in bike usage among both user types. Ride numbers inflate during warmer months and deflate in the winter. However, this seasonal effect is more pronounced among casual riders.
+ For casual riders, the proportion of rides drops significantly during the winter months. This pattern suggests that adverse weather conditions strongly sway the riding habits of casual members, who likely resort to other modes of transportation when the weather turns unfavorable.
+ As temperatures climb from spring and peak in July, we observe a consistent upswing in the proportion of rides by casual members. This trend indicates that casual riders primarily use the bike-sharing service during warmer months, possibly for recreational rides or to indulge in outdoor activities.
+ While the proportion of rides by annual subscribers also dips in the winter, the decrease is less severe than that of casual riders. This trend shows that subscribers have a more resilient commitment to bike usage throughout the year, likely using the service for regular commuting, regardless of weather conditions.
+ Interestingly, the overall highest usage of the bike-sharing service and the peak for casual rides align in July. This period presents a prime opportunity to coax casual riders into becoming annual subscribers.

These insights not only underscore the seasonal variations in bike usage but also pinpoint the distinct riding habits between casual riders and annual subscribers. Understanding these trends is a key component in crafting targeted marketing strategies that nudge casual riders to transition into subscribers, particularly by capitalizing on the high usage during the summer months.

### Bike Type usage
Diving deeper into the usage habits of our riders, we'll now examine the choice of bike types across both user groups:
![Bike Types](https://github.com/mkj89/Cyclistic-Bike-Share-Analysis/blob/main/viz/Bike%20types%20users.png)
+ According to our data, annual subscribers primarily use classic bikes and electric bikes. Interestingly, docked bikes are not utilized by this group at all. This choice could be influenced by factors such as speed, convenience, and comfort, particularly as these attributes align with the commuting needs of our subscribers.
+In contrast, casual riders exhibit a balanced usage of classic and electric bikes, while also occasionally opting for docked bikes. This pattern might indicate that casual riders are more open to experimenting with different bike types or that their use of bikes, which leans more towards leisure and exploratory rides, allows for a more diverse choice in bike types.
+Crucially, both user groups show a strong preference for classic and electric bikes. This trend suggests that maintaining an ample inventory of these two bike types could meet the demand of different user groups effectively.

Understanding the bike preferences of different user groups is instrumental for bike inventory management. Moreover, this information can aid in designing more targeted marketing strategies. For example, emphasizing the benefits of classic and electric bikes, which are the preferred choices among casual riders, could encourage them to become annual subscribers.

### Popular Stations Casual Users
In the final leg of our analysis, we identified the top 5 popular starting points for casual riders. This information can help us pinpoint strategic locations for targeted marketing efforts:
![Popular Stations](https://github.com/mkj89/Cyclistic-Bike-Share-Analysis/blob/main/viz/Popular%20stations.png) 
+ Data suggests that there are certain locations that are favored as starting points by casual riders. These include the following: Streeter Dr & Grand Ave, Dusable Lake Shore Dr & Monroe St, Michigan Ave & Oak St, Millenium Park, and Dusable Lake Shore Dr & North Blvd.

A high volume of casual rides originate from these popular spots. These locations present great opportunities for on-location engagement strategies like promotions, signage, or special events that could help convert casual riders into annual subscribers.

## Conclusion and Recommendations
This analysis has revealed a number of distinct trends and habits between Cyclistic's casual riders and annual subscribers. We've discovered that while both groups cover similar average distances, casual riders tend to spend about twice as long per ride compared to annual subscribers, suggesting a more leisurely use of the service. Seasonal trends also reveal casual riders primarily utilize the service during warmer months and are significantly affected by unfavorable weather, in contrast to annual subscribers whose usage remains relatively resilient throughout the year.

Interestingly, both user groups show a strong preference for classic and electric bikes. Further, specific locations emerged as favored starting points among casual riders, providing potential hotspots for targeted marketing initiatives.

Taking these insights into consideration, here are my recommendations:

1. **Promote the Practicality of Subscriptions:** Our analysis shows that casual riders use the service more for leisure, particularly over weekends, whereas subscribers use the service consistently for commuting. Marketing efforts should thus focus on demonstrating the cost-effectiveness and convenience of an annual subscription for regular commuting and spontaneous rides alike.
2. **Seasonal Marketing Initiatives:** Given the significant drop in usage during colder months, especially among casual riders, consider introducing seasonal campaigns that encourage ridership during this time. This could include winter riding tips, promoting the use of warmer clothing, or introducing a holiday-themed campaign to motivate riders.
3. **Targeted Advertising at Popular Locations:** On-the-ground marketing initiatives at popular starting points for casual riders such as Streeter Dr & Grand Ave, Dusable Lake Shore Dr & Monroe St, Michigan Ave & Oak St, Millenium Park, and Dusable Lake Shore Dr & North Blvd, could be effective. Advertising at these locations could inform riders about the benefits of subscribing and potentially convert casual riders into annual subscribers.
4.**Highlight the Benefits of Preferred Bike Types:** Since both casual riders and annual subscribers heavily favor classic and electric bikes, marketing campaigns should highlight the benefits of these bike types. This could include their ease of use, suitability for both commuting and leisure rides, and the availability of these bikes across all Cyclistic stations.
5. **Offer Special Promotions During Off-Peak Hours:** To incentivize use during quieter hours, consider offering discounted rates or promotional deals. This could also extend to less busy days of the week, encouraging a more balanced usage spread and potentially converting casual users into subscribers.

In conclusion, with a deeper understanding of rider behavior, Cyclistic can leverage these insights to create targeted marketing strategies that meet the distinct needs of casual riders and annual subscribers. Doing so will not only enhance the riders' experience but also potentially increase the conversion of casual riders into annual subscribers, driving revenue growth for our company.
