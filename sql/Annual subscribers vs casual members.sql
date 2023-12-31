SELECT 
  CASE 
    WHEN member_casual = 'member' THEN 'Annual Subscribers'
    ELSE 'Casual Users'
  END AS user_type,
  COUNT(ride_id) AS num_of_rides
FROM 
  `credible-flag-393811.cyclistic_bike_share_analysis.bike_data_clean`
GROUP BY 
  user_type;
