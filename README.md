# Rockbuster Stealth LLC - SQL Analysis for Streaming Launch Strategy

## Project Overview

Rockbuster Stealth LLC, a former global movie rental company, is transitioning from physical stores to a competitive online streaming service. This SQL-based analysis provides data-driven insights to guide the launch strategy by identifying high-value customers, revenue-generating content, and priority markets.

## Business Context

Facing pressure from streaming giants like Netflix and Amazon Prime, Rockbuster's management team needed answers to critical questions:

- Which geographic markets should we prioritize for launch?
- What film content generates the most revenue?
- Where are our most valuable customers located?
- How should we allocate our marketing budget across regions?

## Key Findings

### Market Analysis
- **India, China, and the United States** represent ~40% of the customer base
- Top customers are distributed globally, not concentrated in a single geography
- **Tier-1 markets:** India, China, United States
- **Tier-2 markets:** Japan, Mexico, Brazil, Russia, Philippines, Turkey, Indonesia

### Content Performance
- **Sports, Sci-Fi, and Animation** deliver the strongest revenue performance
- Film ratings show consistent revenue across PG, PG-13, and R categories
- Top 10 films generate disproportionate revenue compared to bottom performers

### Customer Insights
- High-value customers exist across all major markets
- Customer lifetime value varies significantly by region
- Top cities within priority countries identified for targeted marketing

## Tools & Skills

- **PostgreSQL** - Complex queries, data analysis
- **Tableau Public** - Interactive visualizations
- **Database Management** - Relational database concepts, ERD interpretation

### SQL Techniques Demonstrated
- Multi-table JOINs (INNER, LEFT, RIGHT)
- Subqueries (nested and correlated)
- Common Table Expressions (CTEs)
- Aggregate functions (SUM, COUNT, AVG)
- GROUP BY with HAVING clauses
- Window functions for ranking

## Query Files

### SQL Queries

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

### Reports

| File | Description |
|------|-------------|
| `Rockbuster_Analysis_Results.xlsx` | Detailed analysis workbook with all findings |
| `Rockbuster_Streaming_Campaign_Data_Dictionary.pdf` | Database schema and field definitions |
| `Rockbuster_Streaming_Campaign_Final.pdf` | Final presentation (PDF format) |
| `Rockbuster_Streaming_Campaign_Final.pptx` | Final presentation (PowerPoint format) |

### Visualizations

| File | Description |
|------|-------------|
| `Rockbuster ERD.png` | Entity Relationship Diagram of the database |

## Tableau Visualizations

- [Customer Distribution Map](https://public.tableau.com/app/profile/jess.duong/viz/RockbustersTopCustomersbyCountryandAffinity/High_AffinityCustomerMarkets?publish=yes)
- [Top 10 Countries by Customer Count](https://public.tableau.com/app/profile/jess.duong/viz/RockbustersTopCustomersbyCountry/Top10CustomersbyCountries)

## Business Impact
This analysis provided Rockbuster's executive team with:
- **Clear market prioritization** for resource allocation
- **Data-backed content strategy** aligned with revenue patterns
- **Geographic expansion roadmap** with phased rollout plan
- **Customer segmentation insights** for targeted marketing

## Skills Demonstrated
- Advanced SQL query writing and optimization
- Relational database analysis across complex schemas
- Business intelligence and strategic insight generation
- Data storytelling and executive communication
- Geographic and demographic market analysis

## Future Analysis Opportunities
- Predictive modeling for streaming demand by market
- Optimal pricing tier analysis by region
- City-level targeting for customer acquisition campaigns
- Content recommendation engine based on rental patterns

## Author
**Jess Duong**  
Aspiring Business Intelligence Analyst  


## Data Citation

Data provided by CareerFoundry as part of the Data Analytics certification program. The Rockbuster database is a PostgreSQL sample database representing a fictional DVD rental company.
