# Rockbuster Stealth SQL Analysis

**Relational database analysis using PostgreSQL to guide streaming service launch strategy for a transitioning movie rental company.**

[![View Dashboard](https://img.shields.io/badge/Tableau-Customer_Distribution-orange)](https://public.tableau.com/app/profile/jess.duong/viz/RockbustersTopCustomersbyCountryandAffinity/High_AffinityCustomerMarkets?publish=yes)
[![View Queries](https://img.shields.io/badge/View-SQL_Queries-blue)](Queries/)

## Project Overview

Rockbuster Stealth LLC, a former global movie rental company, is transitioning from physical stores to compete in the online streaming market. Facing pressure from Netflix and Amazon Prime, management needed data-driven insights to guide their launch strategy. This SQL analysis examined customer behavior, revenue patterns, and geographic markets to identify priorities for the streaming platform rollout.

### Business Questions
- Which geographic markets should we prioritize for launch?
- What film content generates the most revenue?
- Where are our most valuable customers located?
- How should we allocate marketing budget across regions?

### Key Findings
- **India, China, and United States represent ~40% of customer base**: Identified as Tier-1 priority markets
- **Sports, Sci-Fi, and Animation deliver 20%+ higher revenue** than other genres
- **Top customers distributed globally**: Not concentrated in single geography; requires multi-region strategy
- **Tier-2 expansion markets identified**: Japan, Mexico, Brazil, Russia, Philippines, Turkey, Indonesia

## Tools & Techniques

**Tools**: PostgreSQL, pgAdmin, Tableau, DbVisualizer  
**Skills**: SQL querying, relational database analysis, data visualization, business intelligence, stakeholder presentation

### SQL Techniques Demonstrated
- Multi-table JOINs (INNER, LEFT, RIGHT) across 15-table schema
- Subqueries (nested and correlated) for complex filtering
- Common Table Expressions (CTEs) for improved query readability
- Aggregate functions with GROUP BY and HAVING clauses
- Window functions for ranking and segmentation
- Database schema interpretation using ERD

## Repository Contents
```
├── Queries/                    # 16+ SQL queries (market analysis, revenue, customer insights)
├── Visualizations/             # Tableau dashboards, ERD diagram
├── Reports/                    # Data dictionary, analysis workbook, presentation
└── README.md                   # Project documentation
```

## Strategic Recommendations

### Market Launch Strategy
- **Phase 1 (Tier-1 Markets)**: Launch in India, China, and United States simultaneously
  - Represents largest customer concentration and established payment infrastructure
  - Localize content libraries with regional film preferences
  - Allocate 60% of marketing budget to these three markets

- **Phase 2 (Tier-2 Expansion)**: Roll out to Japan, Mexico, Brazil within 6 months
  - Strong existing customer bases with high lifetime value
  - Secondary revenue opportunity with lower competitive intensity
  - Allocate 30% of marketing budget for phased expansion

### Content Acquisition Priorities
- **Invest heavily in Sports, Sci-Fi, and Animation content**: These genres drive 20%+ higher revenue per rental
- **Maintain balanced rating mix**: PG, PG-13, and R-rated content show consistent revenue performance
- **Focus on proven franchises**: Top 10 films generate disproportionate revenue; prioritize sequel/franchise rights

### Customer Targeting
- **High-value customer segments exist in all major markets**: Avoid over-indexing on single geography
- **City-level targeting recommended**: Top cities within priority countries identified for localized campaigns
- **Customer lifetime value varies 3x across regions**: Adjust acquisition spend based on projected CLV by market

## Data Scope & Analysis

**Database**: PostgreSQL (15 tables, 599 customers across 108 countries)  
**Time Period**: Historical rental transactions (2005-2006)  
**Geographic Coverage**: Global customer base with concentrations in Asia, North America, Europe

### Analytical Approach
- Analyzed 15-table relational database using complex multi-table JOINs
- Calculated customer lifetime value (CLV) by geography and segment
- Aggregated revenue by genre, rating, and film to identify content patterns
- Ranked markets by customer count, revenue, and strategic importance
- Built interactive Tableau dashboards for geographic and customer analysis

### Data Limitations
- **Historical rental data**: Physical rental patterns may not fully predict streaming behavior
- **Sample database**: Fictional dataset designed for educational purposes
- **Limited timeframe**: 2005-2006 data requires validation against current market conditions
- **Revenue proxy**: Rental revenue used as proxy for streaming subscription value

## Interactive Visualizations

**[Customer Distribution & Affinity Map](https://public.tableau.com/app/profile/jess.duong/viz/RockbustersTopCustomersbyCountryandAffinity/High_AffinityCustomerMarkets?publish=yes)**  
**[Top 10 Countries by Customer Count](https://public.tableau.com/app/profile/jess.duong/viz/RockbustersTopCustomersbyCountry/Top10CustomersbyCountries)**

### Visualization Features
- Geographic bubble maps showing customer concentration by country
- Gradient maps highlighting high-value customer locations
- Revenue breakdown by genre and rating category
- Top customer identification within priority cities

## Documentation

- **[SQL Query Library](Queries/)**: 16+ queries covering market analysis, customer segmentation, and revenue metrics
- **[Data Dictionary](Reports/)**: Complete database schema with field definitions and relationships
- **[Analysis Workbook](Reports/)**: Detailed findings with supporting tables and charts
- **[Stakeholder Presentation](Reports/)**: Executive summary with visualizations and strategic recommendations
- **[ERD Diagram](Visualizations/)**: Entity Relationship Diagram showing database structure

## Project Context

This project was completed as part of CareerFoundry's Data Analytics program, demonstrating proficiency in:
- SQL query writing and optimization for business intelligence
- Relational database navigation across complex multi-table schemas
- Geographic market analysis and customer segmentation
- Translating analytical findings into actionable business strategy
- Creating stakeholder-ready presentations for executive decision-making

### Technical Approach
- **Database Platform**: PostgreSQL with pgAdmin interface
- **Query Strategy**: Progressive complexity from simple aggregations to nested CTEs
- **Code Organization**: Modular queries organized by business question
- **Visualization Tools**: Tableau Public for interactive geographic analysis
- **Presentation Design**: Executive-focused narrative with data-backed recommendations

## Future Analysis Opportunities

### Recommended Enhancements
- **Predictive demand modeling**: Forecast streaming subscriptions by market using historical rental patterns
- **Pricing optimization**: Analyze price sensitivity across regions to set tiered subscription rates
- **Content recommendation engine**: Build collaborative filtering model based on rental history
- **Churn risk analysis**: Identify customer retention patterns and at-risk segments
- **Competitive benchmarking**: Compare Rockbuster positioning against Netflix/Prime market penetration

## 👤 Author

**Jess Duong**  
Data Analyst | [LinkedIn](https://linkedin.com/in/jessica-duong-35690847/) | [GitHub](https://github.com/jess-duong) | duong.t.jess@gmail.com

---

*Data provided by CareerFoundry as part of the Data Analytics certification program. The Rockbuster database is a PostgreSQL sample dataset representing a fictional DVD rental company.*

*For questions about methodology or to discuss this analysis, please reach out via [LinkedIn](https://linkedin.com/in/jessica-duong-35690847/) or open an issue in this repository.*
