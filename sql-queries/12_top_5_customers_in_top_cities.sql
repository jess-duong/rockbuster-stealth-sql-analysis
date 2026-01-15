-- ============================================================
-- Query: Top 5 Customers in Top Cities
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query identifies the highest-spending customers in the
-- top cities within top countries. These VIP customers are
-- candidates for premium and loyalty offerings.
-- ============================================================

SELECT
    cust.customer_id,
    cust.first_name,
    cust.last_name,
    ctry.country,
    cty.city,
    SUM(payment.amount) AS total_amount_paid
FROM customer AS cust
INNER JOIN payment ON cust.customer_id = payment.customer_id
INNER JOIN address AS addr ON cust.address_id = addr.address_id
INNER JOIN city AS cty ON addr.city_id = cty.city_id
INNER JOIN country AS ctry ON cty.country_id = ctry.country_id
WHERE cty.city IN (
    'Aurora',
    'Atlixco',
    'Xintai',
    'Adoni',
    'Dhule (Dhulia)',
    'Kurashiki',
    'Pingxiang',
    'Sivas',
    'Celaya',
    'So Leopoldo'
)
AND ctry.country IN (
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
GROUP BY
    cust.customer_id,
    cust.first_name,
    cust.last_name,
    cty.city,
    ctry.country
ORDER BY total_amount_paid DESC
LIMIT 5;
