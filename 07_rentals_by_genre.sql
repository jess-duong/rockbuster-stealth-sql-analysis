-- ============================================================
-- Query: Rental Count by Genre
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query counts rentals by genre to understand demand.
-- Comparing rental volume with revenue helps identify
-- pricing opportunities.
-- ============================================================

SELECT
    COUNT(rental.rental_id) AS rental_count,
    cat.name AS genre
FROM rental
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film_category AS film_cat ON inventory.film_id = film_cat.film_id
INNER JOIN category AS cat ON film_cat.category_id = cat.category_id
GROUP BY cat.name
ORDER BY rental_count DESC;
