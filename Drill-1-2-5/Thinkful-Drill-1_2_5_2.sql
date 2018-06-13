-- What neighborhoods seem to be the most popular?
-- AA: There's many ways to define 'popular'. I'm choosing to go
-- by count per neighborhood.
-- AA: Beverly Grove is the most popular accounting to total counts.

SELECT
	l.neighbourhood_cleansed AS neighborhood,
	COUNT(c.listing_id) AS bookings_count
FROM
	calendar c
JOIN
	listings_detailed l
ON
	c.listing_id = l.id
GROUP BY neighborhood
HAVING
	neighborhood IS NOT NULL
ORDER BY bookings_count DESC;