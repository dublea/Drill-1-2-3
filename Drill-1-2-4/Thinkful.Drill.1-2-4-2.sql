-- 2) Which station is full most often?

SELECT 
	station_id,
	count(station_id)
FROM
	status
WHERE
	docks_available	 = 0
GROUP BY 1
ORDER BY count(station_id) DESC
