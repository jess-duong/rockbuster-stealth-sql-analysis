-- ============================================================
-- Query: Top 5 Customers in Top Cities (CTE VERSION)
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query uses CTEs (Common Table Expressions) to break the
-- complex logic into readable, logical steps:
--   Step 1: Find top 10 countries by customer count
--   Step 2: Find top 10 cities within those countries
--   Step 3: Find top 5 customers by spending in those cities
-- ============================================================

WITH top_10_countries AS (
    -- Step 1: Find the top 10 countries by customer count
    SELECT
        ctry.country,
        COUNT(cust.customer_id) AS customer_count
    FROM customer AS cust
    INNER JOIN address AS addr ON cust.address_id = addr.address_id
    INNER JOIN city AS cty ON addr.city_id = cty.city_id
    INNER JOIN country AS ctry ON cty.country_id = ctry.country_id
    GROUP BY ctry.country
    ORDER BY customer_count DESC
    LIMIT 10
),

top_10_cities AS (
    -- Step 2: Find the top 10 cities within those top countries
    SELECT
        cty.city,
        ctry.country,
        COUNT(cust.customer_id) AS customer_count
    FROM customer AS cust
    INNER JOIN address AS addr ON cust.address_id = addr.address_id
    INNER JOIN city AS cty ON addr.city_id = cty.city_id
    INNER JOIN country AS ctry ON cty.country_id = ctry.country_id
    WHERE ctry.country IN (SELECT country FROM top_10_countries)
    GROUP BY cty.city, ctry.country
    ORDER BY customer_count DESC
    LIMIT 10
)

-- Step 3: Find the top 5 customers by total payment in those cities
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
WHERE cty.city IN (SELECT city FROM top_10_cities)
GROUP BY
    cust.customer_id,
    cust.first_name,
    cust.last_name,
    cty.city,
    ctry.country
ORDER BY total_amount_paid DESC
LIMIT 5;
