# SQL Queries

PostgreSQL queries analyzing the Rockbuster database to guide streaming launch strategy.

## Query Categories

### Descriptive Statistics (01-02)
Basic metrics on films, customers, and revenue patterns.

### Geographic Analysis (03-05)
Customer distribution by country and city, identifying priority markets.

### Content Performance (06-09)
Revenue and rental patterns by genre, rating, and individual films.

### Customer Segmentation (10-14)
Customer lifetime value analysis and top customer identification.
- Queries 12-14 demonstrate three SQL approaches to the same question: JOINs, subqueries, and CTEs

### Tableau Data Export (15-16)
Datasets formatted for visualization in Tableau Public dashboards.

## Key SQL Techniques

- Multi-table JOINs across 15-table schema
- Aggregate functions (SUM, COUNT, AVG) with GROUP BY
- Nested subqueries and Common Table Expressions (CTEs)
- Window functions for ranking

## Database Schema

15 interconnected tables including: film, customer, rental, payment, inventory, category, country, city, address, store, and relationship tables.

Complete schema documentation: [Data Dictionary](../reports/Rockbuster_Streaming_Campaign_Data_Dictionary.pdf)

## Usage

Execute queries in numerical order. Queries 15-16 export data directly for Tableau visualization.

---

**For complete findings, see [Stakeholder Presentation](../reports/Rockbuster_Streaming_Campaign_Final.pdf).**
