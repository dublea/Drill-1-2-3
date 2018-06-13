-- What's the most expensive listing? What else can you tell me about the listing?
-- AA: There are 6 listings that were rented for $10k in Los Angeles, which is the max
-- amongst nightly earnings.
-- AA: When the listings_detailed table is joined, there's 31 different fields of information
-- about to the listings.

SELECT
	c.listing_id,
	MAX(c.price) AS max_listing_price
FROM
	calendar c
JOIN
	listings_detailed l
ON
	c.listing_id = l.id
GROUP BY c.listing_id
ORDER BY max_listing_price DESC;