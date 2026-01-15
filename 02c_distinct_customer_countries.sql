-- ============================================================
-- Query: Distinct Customer Countries Count
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query counts the number of distinct countries where
-- Rockbuster has customers.
-- ============================================================

SELECT 
    COUNT(DISTINCT ctry.country_id) AS distinct_customer_countries
FROM customer AS cust
INNER JOIN address AS addr ON cust.address_id = addr.address_id
INNER JOIN city AS cty ON addr.city_id = cty.city_id
INNER JOIN country AS ctry ON cty.country_id = ctry.country_id;
