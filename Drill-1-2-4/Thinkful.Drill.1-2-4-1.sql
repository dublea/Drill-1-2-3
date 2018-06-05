SELECT
	t.duration
FROM
	trips t
JOIN
	weather w
WHERE
	w.Events = 'Rain'
ORDER BY duration
LIMIT 3