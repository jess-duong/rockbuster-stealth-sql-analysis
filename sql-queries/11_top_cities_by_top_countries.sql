-- ============================================================
-- Query: Top Cities by Top Countries
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query finds cities with the most customers within the
-- top 10 countries. Results help prioritize geographic markets
-- at both the country and city level for future expansion.
-- ============================================================

SELECT 
    cty.city,
    ctry.country,
    COUNT(cust.customer_id) AS count_of_customer
FROM customer AS cust
INNER JOIN address AS addr ON cust.address_id = addr.address_id
INNER JOIN city AS cty ON addr.city_id = cty.city_id
INNER JOIN country AS ctry ON cty.country_id = ctry.country_id
WHERE ctry.country IN (
    'India', 
    'China', 
    'United States', 
    'Japan', 
    'Mexico', 
    'Brazil', 
    'Russian Federation', 
    'Philippines', 
    'Turkey', 
    'Indonesia'
)
GROUP BY cty.city, ctry.country
ORDER BY count_of_customer DESC;
