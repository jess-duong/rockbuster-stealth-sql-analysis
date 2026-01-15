-- ============================================================
-- Query: Customer Lifetime Value
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query calculates total payment (lifetime value) for each
-- customer with their location data. Top customers are candidates
-- for premium/loyalty offerings.
-- ============================================================

SELECT
    SUM(payment.amount) AS total_payment,
    cust.customer_id,
    cust.first_name,
    cust.last_name,
    ctry.country,
    cty.city,
    cty.city_id
FROM payment
INNER JOIN rental ON payment.rental_id = rental.rental_id
INNER JOIN customer AS cust ON rental.customer_id = cust.customer_id
INNER JOIN address AS addr ON cust.address_id = addr.address_id
INNER JOIN city AS cty ON addr.city_id = cty.city_id
INNER JOIN country AS ctry ON cty.country_id = ctry.country_id
GROUP BY
    cust.customer_id,
    cust.first_name,
    cust.last_name,
    ctry.country,
    cty.city,
    cty.city_id
ORDER BY total_payment DESC
LIMIT 100;
