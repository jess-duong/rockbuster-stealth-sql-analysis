# Rockbuster Stealth LLC - SQL Analysis for Streaming Launch Strategy

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

## Key Objectives
1. Identify countries with the highest customer concentrations
2. Analyze revenue patterns by geography and film genre
3. Determine top-performing films and content categories
4. Profile high-value customer segments
5. Provide actionable recommendations for the streaming platform rollout## Data

## Data Source
- **PostgreSQL database** containing Rockbuster's operational data
- **15 tables** covering customers, films, rentals, payments, inventory, and geographic information
- Data spans customer transactions, film catalog metadata, and store operations

## Tools & Technologies
- **PostgreSQL** - Database management and querying
- **SQL** - Data extraction, joins, subqueries, CTEs, aggregations
- **DbVisualizer** - Database connection and query execution
- **Tableau Public** - Data visualization and geographic mapping
- **PowerPoint** - Executive presentation development

### SQL Techniques Used
- Complex JOINs across multiple tables
- Subqueries (simple and nested)
- Common Table Expressions (CTEs)
- Aggregate functions (SUM, COUNT, AVG, MODE)
- GROUP BY and HAVING clauses
- Data filtering with WHERE and IN clauses

### Key Queries Performed
1. **Geographic Customer Distribution** - Mapped customer counts by country and city
2. **Revenue Analysis by Country** - Calculated total payments aggregated by geography
3. **Top Revenue-Generating Films** - Ranked films by total payment amount
4. **Genre Performance Analysis** - Compared revenue across film categories
5. **Customer Lifetime Value** - Identified highest-spending individual customers
6. **Content Rating Analysis** - Evaluated revenue by MPAA rating (G, PG, PG-13, R, NC-17)
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

## 🔑 Key Findings

### Geographic Insights
- **599 customers** across **108 countries** demonstrate global brand recognition
- **Top 3 markets** (India, China, United States) represent ~40% of total customer base
- **India leads revenue** with $6,035+ in total payments
- **Tier 2 markets** identified: Japan, Mexico, Brazil, Russia, Philippines, Turkey, Indonesia

### Content Performance
- **Sports, Sci-Fi, and Animation** genres generate highest revenue ($4,892, $4,336, $4,245)
- **Top 10 films** each generate $170-$215 in revenue
- **Bottom-performing content** generates less than $8 per title
- **PG-13, NC-17, and PG ratings** dominate revenue performance
- **G-rated family content** underperforms, indicating adult-focused customer base

### Customer Insights
- **Average revenue per customer**: $101.50
- **Top customer lifetime values**: $160-$211 per customer
- **High-value customers distributed globally**, not concentrated in single geography
- Stable engagement with **5-day average rental duration**

## 💡 Strategic Recommendations

1. **Phased Geographic Rollout**
   - **Wave 1 Launch**: India, China, United States (highest volume + revenue)
   - **Wave 2 Expansion**: Japan, Mexico, Brazil, Russia (proven demand tier)
   
2. **Content Strategy**
   - Prioritize Sports, Sci-Fi, and Animation catalog for initial platform
   - Focus on PG-13 and mature-rated content aligned with customer preferences
   - De-prioritize family/G-rated content in early library

3. **Pricing & Localization**
   - Implement region-specific pricing to maximize Asia-Pacific revenue potential
   - Develop multilingual content offerings for international market penetration
   
4. **Marketing Focus**
   - Target high-lifetime-value customer segments with premium tier offers
   - Allocate marketing budget proportionally to Tier 1 and Tier 2 market concentration

## 📁 Project Deliverables

### Repository Structure
```
rockbuster-sql-analysis/
├── README.md
├── sql-queries/
│   ├── customer-geographic-distribution.sql
│   ├── revenue-by-country.sql
│   ├── top-performing-films.sql
│   ├── genre-performance-analysis.sql
│   └── customer-lifetime-value.sql
├── documentation/
│   └── Rockbuster_Data_Dictionary.pdf
├── presentation/
│   ├── Rockbuster_Final_Presentation.pdf
│   └── Rockbuster_Final_Presentation.pptx
└── visualizations/
    └── [Tableau visualizations - links in presentation]
```

### Documentation Highlights
- **Entity Relationship Diagram (ERD)** showing database structure
- **Data Dictionary** with detailed table and column descriptions
- **SQL Query Documentation** with business context for each analysis

## Visualizations
- Geographic heat maps showing customer concentration
- Revenue distribution by country (bar charts)
- Genre performance comparison
- Top-performing films ranked by revenue
- Customer lifetime value analysis

## Business Impact
This analysis provided Rockbuster's executive team with:
- ✅ **Clear market prioritization** for resource allocation
- ✅ **Data-backed content strategy** aligned with revenue patterns
- ✅ **Geographic expansion roadmap** with phased rollout plan
- ✅ **Customer segmentation insights** for targeted marketing

- ## Skills Demonstrated
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
[LinkedIn](#) | [Portfolio](#)

---

*This project was completed as part of CareerFoundry's Data Analytics Program, demonstrating SQL proficiency and business analysis capabilities for real-world decision-making scenarios.*
