-- ============================================================
-- Query: Number of Customers by Country (for Tableau Bubble Map)
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query provides data for the Tableau bubble map visualization.
-- The map shows customer distribution by country using bubble size.
-- India, China, and the United States show the largest concentrations,
-- indicating priority markets for the streaming launch.
-- Tableau Link: https://public.tableau.com/app/profile/jess.duong/viz/RockbustersTopCustomersbyCountry/Top10CustomersbyCountries
-- ============================================================

SELECT 
    ctry.country, 
    ctry.country_id,
    COUNT(cust.customer_id) AS number_of_customers
FROM customer AS cust
INNER JOIN address AS addr ON cust.address_id = addr.address_id
INNER JOIN city AS cty ON addr.city_id = cty.city_id
INNER JOIN country AS ctry ON cty.country_id = ctry.country_id
GROUP BY ctry.country, ctry.country_id
ORDER BY number_of_customers DESC;
