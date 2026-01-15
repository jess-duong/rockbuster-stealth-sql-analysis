-- ============================================================
-- Query: Bottom 10 Revenue-Generating Films
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query identifies the worst performing films by revenue
-- (excluding films with zero revenue) to inform streaming
-- catalogue decisions.
-- ============================================================

SELECT
    film.title,
    SUM(payment.amount) AS total_revenue
FROM payment
INNER JOIN rental ON payment.rental_id = rental.rental_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
GROUP BY film.title
HAVING SUM(payment.amount) > 0
ORDER BY total_revenue ASC
LIMIT 10;
