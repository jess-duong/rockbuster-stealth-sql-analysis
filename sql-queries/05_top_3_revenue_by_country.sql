-- ============================================================
-- Query: Top 3 Revenue-Generating Countries
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query identifies the top 3 countries by total rental
-- payments, helping prioritize markets for streaming launch.
-- ============================================================

SELECT
    ctry.country,
    SUM(payment.amount) AS total_revenue
FROM payment
INNER JOIN customer AS cust ON payment.customer_id = cust.customer_id
INNER JOIN address AS addr ON cust.address_id = addr.address_id
INNER JOIN city AS cty ON addr.city_id = cty.city_id
INNER JOIN country AS ctry ON cty.country_id = ctry.country_id
GROUP BY ctry.country
ORDER BY total_revenue DESC
LIMIT 3;
