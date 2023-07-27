# Cyclistic-Bike-Share-Analysis
This project represents an in-depth analysis of Cyclistic, a thriving bike-sharing company. As a data analyst for Cyclistic, my role was to leverage data in order to understand how customers interact with the bike-sharing service. The goal of the study was to find out how annual members and casual riders differ in their usage patterns.
## Table of Contents
- [Introduction](#introduction)
- [Business Task](#business-task)
- [Data](#data)
- [Processing and Cleaning](#processing-and-cleaning)
-  [Analysis and Visualization](#analysis-and-visualization)
-   [Conclusion and Recommendations](#conclusion-and-recommendations)

## Introduction

The Google Data Analytics Certification course has equipped me with a variety of skills, all culminating in this capstone project. As a Junior Data Analyst at Cyclistic, a major bike-sharing company, I was given the opportunity to dig deep into a comprehensive dataset and extract insightful knowledge.

Cyclistic categorizes its riders into two distinct types: "casual" members, who sporadically use the service via individual passes, and subscribers, who maintain a long-term commitment with annual memberships. Stationed in a major city, Cyclistic operates an extensive network of around 6,000 bicycles across 700 stations. A key growth factor for Cyclistic lies in maximizing its number of annual subscribers, a strategy that promises sustained customer engagement and financial stability.

The objective of this analysis is to unearth valuable insights that could guide effective marketing strategies aimed at transforming casual members into annual subscribers.
Business Task.

## Business Task
In this role, my task is to explore and understand the differences in how annual subscribers and casual members use Cyclistic bikes. The exploration is guided by the following three questions, which aim to inform future marketing strategies:

    How do annual subscribers and casual members use Cyclistic bikes differently?
    Why would casual members buy Cyclistic annual memberships?
    How can Cyclistic use digital media to influence casual members to become subscribers?

## Data
The data used for this analysis comes from Cyclistic’s historical trip data, which are public data provided by Motivate International Inc., the Divvy Bicycle Sharing Service from Chicago, under this [license](https://www.divvybikes.com/data-license-agreement). The dataset, available in .csv format, comprises individual ride records. This dataset includes information such as ride start-end date & time, station information, bike type, and user type (casual member/subscriber). My analysis focuses on data from July 2022 to June 2023.

## Data Processing and Cleaning

The data processing and cleaning phase involved importing the data into Google Cloud Storage (GCS) and then into BigQuery for analysis using SQL. During this process, the initial dataset of 5,779,444 entries was cleaned, leaving 4,409,269 records. This cleaning was done using this query to ensure that specific fields did not include null values and that the started_at timestamp was not later than the ended_at timestamp. The cleaned fields include ride_id, start_station_name, end_station_name, start_day, started_at, ended_at, and member_casual.

After the cleaning and consolidation process, the dataset was ready for analysis.

## Analysis and Visualization

In the analysis and visualization phase, I explored the cleaned dataset to observe differential trends between casual members and annual subscribers. The visualizations were developed in Looker (formerly known as Google Data Studio) to better comprehend and communicate these trends and patterns.

## Conclusion and Recommendations
