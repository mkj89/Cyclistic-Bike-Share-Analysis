AS SELECT 
    ride_id AS ride_id, 
    ANY_VALUE(rideable_type) AS rideable_type, 
    ANY_VALUE(started_at) AS started_at, 
    ANY_VALUE(ended_at) AS ended_at, 
    ANY_VALUE(start_station_name) AS start_station_name,
    ANY_VALUE(start_station_id) AS start_station_id,
    ANY_VALUE(end_station_name) AS end_station_name,
    ANY_VALUE(end_station_id) AS end_station_id,
    ANY_VALUE(start_lat) AS start_lat,
    ANY_VALUE(start_lng) AS start_lng,
    ANY_VALUE(end_lat) AS end_lat,
    ANY_VALUE(end_lng) AS end_lng,
    ANY_VALUE(member_casual) AS member_casual
FROM 
(
    SELECT *
    FROM `credible-flag-393811.cyclistic_bike_share_analysis.bike_data`
    WHERE TIMESTAMP(ended_at) >= TIMESTAMP(started_at)
    AND start_station_name IS NOT NULL
    AND end_station_name IS NOT NULL
    AND (start_day IS NOT NULL OR started_at IS NOT NULL OR ended_at IS NOT NULL OR member_casual IS NOT NULL)
)
WHERE ride_id IS NOT NULL -- Check for ride_id not being NULL as well
GROUP BY ride_id;
