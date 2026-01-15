# Rockbuster Stealth SQL Analysis

## Project Overview

Rockbuster Stealth LLC is a movie rental company that is planning to launch an online video streaming service. This project uses SQL to analyze their existing database and answer key business questions to inform the streaming launch strategy.

## Key Questions Answered

1. **Which markets have the most customers?**
   - India, China, and the United States represent ~40% of the customer base

2. **Where are high-value customers located?**
   - Top customers are distributed globally, not tied to a single geography

3. **Which genres and films generate the most revenue?**
   - Sports, Sci-Fi, and Animation deliver the strongest revenue performance

4. **How should Rockbuster prioritize its streaming launch?**
   - Tier-1 markets: India, China, United States
   - Tier-2 markets: Japan, Mexico, Brazil, Russia, Philippines, Turkey, Indonesia

## Data

- **Database:** PostgreSQL
- **Dataset:** Rockbuster customer, film, rental, and payment data
- **Customers:** 599 across 108 countries
- **Total Revenue:** $60,793.87

## SQL Skills Demonstrated

- Complex JOINs across multiple tables
- Subqueries (simple and nested)
- Common Table Expressions (CTEs)
- Aggregate functions (SUM, COUNT, AVG, MODE)
- GROUP BY and HAVING clauses
- Data filtering with WHERE and IN clauses

## Tableau Visualizations

- [Top Customers by Country (Bubble Map)](https://public.tableau.com/app/profile/jess.duong/viz/RockbustersTopCustomersbyCountry/Top10CustomersbyCountries)
- [High-Affinity Customer Markets (Gradient Map)](https://public.tableau.com/app/profile/jess.duong/viz/RockbustersTopCustomersbyCountryandAffinity/High_AffinityCustomerMarkets)

## Query Files

| File | Description |
|------|-------------|
| `01a_film_descriptive_stats.sql` | Film metrics (length, duration, rate, cost) |
| `01b_revenue_metrics.sql` | Revenue metrics (total, avg transaction, avg per customer) |
| `02a_customer_store_address_stats.sql` | Store, address, and active status counts |
| `02b_customer_modal_values.sql` | Most common names, email, active status |
| `02c_distinct_customer_countries.sql` | Count of distinct countries |
| `03_customer_location.sql` | Full customer location details |
| `04_customers_by_country.sql` | Customer count by country |
| `05_top_3_revenue_by_country.sql` | Top revenue-generating countries |
| `06_revenue_by_genre.sql` | Revenue breakdown by film genre |
| `07_rentals_by_genre.sql` | Rental volume by genre |
| `08_revenue_by_rating.sql` | Revenue by MPAA rating |
| `09a_top_10_films.sql` | Top 10 revenue-generating films |
| `09b_bottom_10_films.sql` | Bottom 10 revenue-generating films |
| `10_customer_lifetime_value.sql` | Customer CLV with location data |
| `11_top_cities_by_top_countries.sql` | Top cities within top countries |
| `12_top_5_customers_in_top_cities.sql` | Top customers in key cities |
| `13_top_5_customers_subquery.sql` | Same query using nested subqueries |
| `14_top_5_customers_cte.sql` | Same query using CTEs |
| `15_customers_by_country_bubble_map.sql` | Data for Tableau bubble map |
| `16_high_value_customers_gradient_map.sql` | Data for Tableau gradient map |

## Key Insights

- **Revenue is highly skewed:** Top 10 films generate $170-$215 each, while bottom 10 generate <$8
- **Teen & adult content performs best:** PG-13, NC-17, and PG ratings lead revenue
- **Asia-Pacific shows strong potential:** Higher rental pricing tolerance makes it priority for expansion
- **VIP customers exist globally:** Top customers contribute $160-$210 each and are spread across multiple regions

## Tools Used

- PostgreSQL
- Tableau Public
- Microsoft Excel
