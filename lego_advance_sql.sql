-- ADVANCED SQL QUERIES

-- A. CASE
-- CATEGORIZE LEGO SETS BY PRICE
SELECT
name,
us_retailprice,

CASE
WHEN US_RETAILPRICE < 20 THEN 'BUDGET'
WHEN US_RETAILPRICE < 50 THEN 'MID-RANGE'
WHEN US_RETAILPRICE < 100 THEN 'PREMIUM'
ELSE 'LUXURY'
END AS PRICE_CATEGORY

FROM lego_sets 
WHERE US_RETAILPRICE IS NOT NULL;

-- B. GRUP BY + HAVING
-- FIND THEMES WITH MORE THAN 50 SETS 
SELECT 
THEME,
COUNT(*) AS TOTAL_SETS
FROM lego_sets
GROUP BY theme HAVING COUNT(*) > 50
ORDER BY TOTAL_SETS DESC;

-- C. SUBQUERY
-- FIND SETS PRICED ABOVE THE OVERALL AVERAGE PRICE
SELECT
    name,
    theme,
    US_retailPrice
FROM lego_sets
WHERE US_retailPrice > (
    SELECT AVG(US_retailPrice)
    FROM lego_sets
    WHERE US_retailPrice IS NOT NULL
)
ORDER BY US_retailPrice DESC;

-- D. CTE (PROBLEM C CAN ALSO BE SOLVED USING CTE)
WITH average_price AS (
    SELECT AVG(US_retailPrice) AS avg_price
    FROM lego_sets
    WHERE US_retailPrice IS NOT NULL
)

SELECT
    name,
    theme,
    US_retailPrice
FROM lego_sets
CROSS JOIN average_price
WHERE US_retailPrice > avg_price
ORDER BY US_retailPrice DESC;

-- E. RANK()
-- RANK THEMES BY AVERAGE PRICE
SELECT 
THEME,
ROUND(AVG(US_RETAILPRICE), 2) AS AVG_PRICE,
 
 RANK() OVER (
 ORDER BY AVG(US_RETAILPRICE) DESC
 ) AS PRICE_RANK
 
 FROM lego_sets
 WHERE US_RETAILPRICE IS NOT NULL
 GROUP BY THEME;
 
 -- F. ROW NUMBER
 -- FIND THE TOP SETS WITHIN EACH THEME
 SELECT *
FROM (
    SELECT
        name,
        theme,
        US_retailPrice,
        
        ROW_NUMBER() OVER (
            PARTITION BY theme
            ORDER BY US_retailPrice DESC
        ) AS row_num
        
    FROM lego_sets
    WHERE US_retailPrice IS NOT NULL
) ranked_sets

WHERE row_num <= 3;

-- G. LAG
-- COMPARE YEARLY LEGO SET COUNTS 
WITH yearly_sets AS (
    SELECT
        year,
        COUNT(*) AS total_sets
    FROM lego_sets
    GROUP BY year
)

SELECT
    year,
    total_sets,
    
    LAG(total_sets) OVER (
        ORDER BY year
    ) AS previous_year_sets

FROM yearly_sets
ORDER BY year;