-- ============================================================
-- Query: Number of Customers by Country
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query counts customers in each country to identify
-- which geographic markets have the largest customer base.
-- ============================================================

SELECT
    COUNT(DISTINCT cust.customer_id) AS number_of_customers,
    ctry.country,
    ctry.country_id
FROM customer AS cust
INNER JOIN address AS addr ON cust.address_id = addr.address_id
INNER JOIN city AS cty ON addr.city_id = cty.city_id
INNER JOIN country AS ctry ON cty.country_id = ctry.country_id
GROUP BY ctry.country, ctry.country_id
ORDER BY number_of_customers DESC;
