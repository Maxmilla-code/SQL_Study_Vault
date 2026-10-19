
```
/* ==============================================================================
   SQL SELECT Query
-------------------------------------------------------------------------------
   These are my notes on using SELECT to get data from tables, filter results,
   sort records, group data, and practise some other useful SQL features.

   What I'm covering:
     1. SELECT ALL COLUMNS
     2. SELECT SPECIFIC COLUMNS
     3. WHERE CLAUSE
     4. ORDER BY
     5. GROUP BY
     6. HAVING
     7. DISTINCT
     8. TOP
     9. Combining Queries
	 10. COOL STUFF - Additional SQL Features
=================================================================================
*/



/* ==============================================================================
   SELECT ALL COLUMNS
=============================================================================== */

-- Get everything stored in the customers table
SELECT *
FROM customers

-- Get everything stored in the orders table
SELECT *
FROM orders

/* ==============================================================================
   SELECT FEW COLUMNS
=============================================================================== */

-- Get only the customer's name, country, and score.
SELECT 
    first_name,
    country, 
    score
FROM customers

/* ==============================================================================
   WHERE
=============================================================================== */

-- Find customers whose scores are not 0
SELECT *
FROM customers
WHERE score != 0

-- Find all customers who are from Germany
SELECT *
FROM customers
WHERE country = 'Germany'

-- Get the names and countries of customers from Germany
SELECT
    first_name,
    country
FROM customers
WHERE country = 'Germany'

/* ==============================================================================
   ORDER BY
=============================================================================== */

/* Get all customers and arrange them
   from the highest score to the lowest. */
SELECT *
FROM customers
ORDER BY score DESC

/* Get all customers and arrange them
   from the lowest score to the highest. */
SELECT *
FROM customers
ORDER BY score ASC

/* Get all customers and arrange their records
   alphabetically by country. */
SELECT *
FROM customers
ORDER BY country ASC

/* Sort customers by country first,
   then put the highest scores first within each country. */
SELECT *
FROM customers
ORDER BY country ASC, score DESC

/* Get the name, country, and score of customers
   whose score isn't 0, then arrange them
   from the highest score to the lowest. */
SELECT
    first_name,
    country,
    score
FROM customers
WHERE score != 0
ORDER BY score DESC

/* ==============================================================================
   GROUP BY
=============================================================================== */

-- Add up the scores of customers from each country
SELECT 
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country

/* This query won't work as written because I'm selecting first_name
   without grouping it or using an aggregate function on it.
   SQL needs to know which first_name to return for each country. */
SELECT 
    country,
    first_name,
    SUM(score) AS total_score
FROM customers
GROUP BY country

-- Get the total score and number of customers for each country
SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country

/* ==============================================================================
   HAVING
=============================================================================== */

/* Calculate the average score for each country
   and keep only countries with an average score above 430. */
SELECT
    country,
    AVG(score) AS avg_score
FROM customers
GROUP BY country
HAVING AVG(score) > 430

/* First, ignore customers whose score is 0.
   Then calculate the average score for each country
   and keep only countries with an average above 430. */
SELECT
    country,
    AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430

/* ==============================================================================
   DISTINCT
=============================================================================== */

-- Get a list of countries without repeating any country
SELECT DISTINCT country
FROM customers

/* ==============================================================================
   TOP
=============================================================================== */

-- Show me just the first 3 customers
SELECT TOP 3 *
FROM customers

-- Show the 3 customers with the highest scores
SELECT TOP 3 *
FROM customers
ORDER BY score DESC

-- Show the 2 customers with the lowest scores
SELECT TOP 2 *
FROM customers
ORDER BY score ASC

-- Get the 2 most recent orders based on the order date
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC

/* ==============================================================================
   All Together
=============================================================================== */

/* Put the steps together:
   Ignore customers with a score of 0,
   calculate the average score for each country,
   keep countries with an average above 430,
   and sort the results from the highest average to the lowest. */
SELECT
    country,
    AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY AVG(score) DESC

/* ============================================================================== 
   COOL STUFF - Additional SQL Features
=============================================================================== */

-- Run more than one query in the same script
SELECT * FROM customers;
SELECT * FROM orders;

/* Selecting Static Data */
-- Return a fixed number without getting it from a table
SELECT 123 AS static_number;

SELECT 'Hello' AS static_string;

-- Add a fixed label to every customer returned by this query
SELECT
    id,
    first_name,
    'New Customer' AS customer_type
FROM customers;
```
