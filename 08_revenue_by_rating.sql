-- ============================================================
-- Query: Top Revenue by Rating
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query calculates total revenue by MPAA rating to help
-- determine target audience demographics for streaming launch.
-- ============================================================

SELECT 
    SUM(payment.amount) AS total_revenue,
    film.rating
FROM payment
INNER JOIN rental ON payment.rental_id = rental.rental_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
GROUP BY film.rating
ORDER BY total_revenue DESC;
