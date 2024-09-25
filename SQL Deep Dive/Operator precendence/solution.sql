
/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/

SELECT
    firstname,
    lastname,
    age,
    income,
    country
FROM customers
WHERE (
    (((age < 30) OR (age > 50)) OR
    ((age = 50) AND (country IN ('Japan', 'Australia')))) AND
    (income > 50000)
)
ORDER BY (age);



/*
* DB: Store
* Table: Orders
* Question:
* What was our total sales in June of 2004 for orders over 100 dollars?
*/

SELECT SUM(totalamount)
FROM orders
WHERE (
    EXTRACT(MONTH FROM orderdate) = 7 AND
    EXTRACT(YEAR FROM orderdate) = 2004 AND
    totalamount > 100
);

-- result: 193732.52
