-- ============================================================
-- Query: Customer Store, Address, and Active Stats
-- Project: Rockbuster Stealth Streaming Launch Analysis
-- Author: Jess Duong
-- ============================================================
-- This query analyzes customer distribution patterns including
-- store assignments, addresses, and active status.
-- ============================================================

SELECT
    COUNT(DISTINCT customer.store_id) AS distinct_stores,
    MODE() WITHIN GROUP (ORDER BY customer.store_id) AS most_common_store,
    COUNT(DISTINCT customer.address_id) AS distinct_addresses,
    MODE() WITHIN GROUP (ORDER BY customer.address_id) AS most_common_address,
    COUNT(DISTINCT customer.active) AS distinct_active_status,
    MODE() WITHIN GROUP (ORDER BY customer.active) AS most_common_active_status
FROM customer;
