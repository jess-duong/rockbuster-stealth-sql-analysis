-- ============================================================
-- Query: Revenue Metrics
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- These metrics show Rockbuster's current rental economics
-- including total revenue, average transaction value, and
-- average revenue per customer.
-- ============================================================

SELECT
    ROUND(SUM(payment.amount), 2) AS total_revenue,
    ROUND(AVG(payment.amount), 2) AS avg_transaction_value,
    ROUND(SUM(payment.amount) / COUNT(DISTINCT rental.customer_id), 2) AS avg_revenue_per_customer
FROM rental
INNER JOIN payment ON rental.rental_id = payment.rental_id
WHERE rental.return_date IS NOT NULL;
