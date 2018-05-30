SELECT
	start_station,
	COUNT(trip_id) number_of_trips
FROM
	trips
GROUP by start_station