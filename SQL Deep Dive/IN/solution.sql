/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/

SELECT COUNT(*)
FROM orders
WHERE customerId IN (7888, 1082, 12808, 9623);

-- result: 6



/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/

SELECT COUNT(*)
FROM city
WHERE district IN ('Zuid-Holland', 'Noord-Brabant', 'Utrecht');

-- result: 12
