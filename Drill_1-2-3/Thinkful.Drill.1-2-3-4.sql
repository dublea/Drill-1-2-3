SELECT
	end_station,
	AVG(duration) average_duration
FROM
	trips
GROUP by end_station