/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT *
FROM employees
WHERE (current_date - birth_date) > 60;




/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/
SELECT *
FROM employees
WHERE EXTRACT(MONTH FROM CAST(hire_date AS TIMESTAMP)) = 2;




/*
* DB: Employees
* Table: employees
* Question: How many employees were born in November?
*/
SELECT *
FROM employees
WHERE EXTRACT(MONTH FROM CAST(birth_date AS TIMESTAMP)) = 11;




/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

-- wouldn't using ORDER BY make more sense here?
SELECT
    birth_date,
    last_name,
    first_name,
    MAX(current_timestamp - CAST(birth_date AS TIMESTAMP)) AS max_age
FROM employees
GROUP BY (birth_date, last_name, first_name)
LIMIT(1);

-- my proposed solution
SELECT *
FROM employees
ORDER BY (birth_date)
LIMIT(1);





/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/
SELECT COUNT(*)
FROM orders
WHERE (
    orderdate BETWEEN '2004-01-01' AND '2004-01-31'
);

-- result: 1000

