-- ============================================================
-- Query: Total Revenue by Genre
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query calculates total revenue by film genre to identify
-- which content categories should be prioritized for streaming.
-- ============================================================

SELECT 
    SUM(payment.amount) AS total_revenue,
    cat.name AS genre
FROM payment
INNER JOIN rental ON payment.rental_id = rental.rental_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
INNER JOIN film_category AS film_cat ON film.film_id = film_cat.film_id
INNER JOIN category AS cat ON film_cat.category_id = cat.category_id
GROUP BY cat.name
ORDER BY total_revenue DESC;
