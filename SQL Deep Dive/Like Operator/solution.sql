/*
* DB: Employees
* Table: employees
* Question: Find the age of all employees whose name starts with M.
*/
SELECT
    last_name,
    first_name,
    EXTRACT (YEAR FROM AGE(birth_date)) AS "age"
FROM employees
WHERE first_name LIKE 'M%';


/*
* DB: Employees
* Table: employees
* Question: How many people's name start with A and end with R?
*/

SELECT COUNT(*)
FROM employees
WHERE first_name LIKE 'A%r';

-- result: 1846



/*
* DB: Store
* Table: customers
* Question: How many people's zipcode have a 2 in it?.
*/

SELECT COUNT(*)
FROM customers
WHERE CAST(zip AS VARCHAR) LIKE '%2%';

-- result: 4211



/*
* DB: Store
* Table: customers
* Question: How many people's zipcode start with 2 with the 3rd character being a 1.
*/

SELECT COUNT(*)
FROM customers
WHERE CAST(zip AS VARCHAR) LIKE '2_1%';

-- result: 109



/*
* DB: Store
* Table: customers
* Question: Which states have phone numbers starting with 302?
*/

SELECT COALESCE(state, 'No State'), phone
FROM customers
WHERE phone LIKE '302%';
