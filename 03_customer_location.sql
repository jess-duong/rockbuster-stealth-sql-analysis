-- ============================================================
-- Query: Customer Location Details
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query retrieves complete location information for each
-- customer by joining customer, address, city, and country tables.
-- ============================================================

SELECT
    cust.customer_id,
    ctry.country,
    cty.city,
    addr.address,
    addr.address2,
    addr.district,
    addr.postal_code,
    addr.phone
FROM customer AS cust
INNER JOIN address AS addr ON cust.address_id = addr.address_id
INNER JOIN city AS cty ON addr.city_id = cty.city_id
INNER JOIN country AS ctry ON cty.country_id = ctry.country_id;
