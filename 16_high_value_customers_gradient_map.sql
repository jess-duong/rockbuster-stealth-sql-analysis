-- ============================================================
-- Query: Top Customer Revenue by Country (for Tableau Gradient Map)
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query provides data for the Tableau choropleth (gradient) map.
-- The map displays total revenue by country, with darker shading
-- indicating higher revenue. Countries generating over $500 are
-- highlighted. India leads, followed by China and the United States.
-- Tableau Link: https://public.tableau.com/app/profile/jess.duong/viz/RockbustersTopCustomersbyCountryandAffinity/High_AffinityCustomerMarkets
-- ============================================================

SELECT 
    ctry.country,
    COUNT(DISTINCT cust.customer_id) AS high_value_customers,
    SUM(payment.amount) AS total_revenue
FROM customer AS cust
INNER JOIN address AS addr ON cust.address_id = addr.address_id
INNER JOIN city AS cty ON addr.city_id = cty.city_id
INNER JOIN country AS ctry ON cty.country_id = ctry.country_id
INNER JOIN payment ON cust.customer_id = payment.customer_id
GROUP BY ctry.country
HAVING SUM(payment.amount) > 500
ORDER BY total_revenue DESC;
