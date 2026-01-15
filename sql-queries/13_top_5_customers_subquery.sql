-- ============================================================
-- Query: Top 5 Customers in Top Cities (SUBQUERY VERSION)
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query uses NESTED SUBQUERIES to dynamically find:
--   1. Top 10 countries by customer count (innermost)
--   2. Top 10 cities within those countries (middle)
--   3. Top 5 customers by spending in those cities (outer)
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
    -- Subquery: Get top 10 cities from top 10 countries
    SELECT cty2.city
    FROM customer AS cust2
    INNER JOIN address AS addr2 ON cust2.address_id = addr2.address_id
    INNER JOIN city AS cty2 ON addr2.city_id = cty2.city_id
    INNER JOIN country AS ctry2 ON cty2.country_id = ctry2.country_id
    WHERE ctry2.country IN (
        -- Nested subquery: Get top 10 countries by customer count
        SELECT ctry3.country
        FROM customer AS cust3
        INNER JOIN address AS addr3 ON cust3.address_id = addr3.address_id
        INNER JOIN city AS cty3 ON addr3.city_id = cty3.city_id
        INNER JOIN country AS ctry3 ON cty3.country_id = ctry3.country_id
        GROUP BY ctry3.country
        ORDER BY COUNT(cust3.customer_id) DESC
        LIMIT 10
    )
    GROUP BY cty2.city
    ORDER BY COUNT(cust2.customer_id) DESC
    LIMIT 10
)
GROUP BY
    cust.customer_id,
    cust.first_name,
    cust.last_name,
    cty.city,
    ctry.country
ORDER BY total_amount_paid DESC
LIMIT 5;
