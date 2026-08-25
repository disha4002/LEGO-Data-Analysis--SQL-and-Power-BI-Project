-- Pricing Analysis
-- What is the average LEGO set price?
select * from lego_sets;
SELECT
ROUND(AVG(US_retailPrice), 2) AS average_price
FROM lego_sets
WHERE US_retailPrice IS NOT NULL;

-- What are the 10 most expensive lego sets?
SELECT 
    name,
    theme,
    pieces,
    US_retailPrice
FROM lego_sets
WHERE US_retailPrice IS NOT NULL
ORDER BY US_retailPrice DESC
LIMIT 10;

-- WHICH THEMES HAVEN THE HIGHEST AVERAGE PRICE?
SELECT 
    theme,
    ROUND(AVG(US_retailPrice), 2) AS avg_price
FROM lego_sets
WHERE US_retailPrice IS NOT NULL
GROUP BY theme
HAVING COUNT(US_retailPrice) >= 5
ORDER BY avg_price DESC;

