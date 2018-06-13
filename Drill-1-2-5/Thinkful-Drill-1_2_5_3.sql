-- What time of year is the cheapest time to go to your city? What about the busiest?
-- AA: July has the most bookings and May has the highest average price according to
-- the calendar table.
-- AA: This data doesn't seem to correct to me and I would want to ensure the table
-- is accurate.

WITH
	by_month
AS (
	SELECT
		listing_id,
		date,
		SUBSTR(date, 1, INSTR(date, '/') - 1) AS month,
		price
	FROM
		calendar
)

SELECT
	month,
	COUNT(*) AS month_count,
	AVG(price) AS avg_price
FROM
	by_month
WHERE price IS NOT NULL
GROUP BY month
ORDER BY month_count DESC