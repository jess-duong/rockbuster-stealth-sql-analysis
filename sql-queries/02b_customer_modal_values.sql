-- ============================================================
-- Query: Customer Modal Values
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query finds the most common (modal) customer names,
-- email, and active status.
-- ============================================================

SELECT
    MODE() WITHIN GROUP (ORDER BY customer.first_name) AS modal_first_name,
    MODE() WITHIN GROUP (ORDER BY customer.last_name) AS modal_last_name,
    MODE() WITHIN GROUP (ORDER BY customer.email) AS modal_email,
    MODE() WITHIN GROUP (ORDER BY customer.activebool) AS modal_active_status
FROM customer;
