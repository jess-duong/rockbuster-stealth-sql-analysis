-- ============================================================
-- Query: Film Descriptive Statistics
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- These metrics provide a broader view of Rockbuster's film
-- library characteristics including length, rental duration,
-- rental rates, and replacement costs.
-- ============================================================

SELECT
    AVG(film.length) AS avg_length,
    MIN(film.length) AS min_length,
    MAX(film.length) AS max_length,
    AVG(film.rental_duration) AS avg_rental_duration,
    MIN(film.rental_duration) AS min_rental_duration,
    MAX(film.rental_duration) AS max_rental_duration,
    AVG(film.rental_rate) AS avg_rental_rate,
    MIN(film.rental_rate) AS min_rental_rate,
    MAX(film.rental_rate) AS max_rental_rate,
    AVG(film.replacement_cost) AS avg_replacement_cost,
    MIN(film.replacement_cost) AS min_replacement_cost,
    MAX(film.replacement_cost) AS max_replacement_cost
FROM film;
