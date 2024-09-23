/*
* DB: Store
* Table: customers
* Question: adjust the following query to display the null values as "No Address"
*/

SELECT COALESCE(address2, 'No Address') AS address2
FROM customers
WHERE address2 IS NULL;

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

-- every value in address2 column is NULL...
SELECT *
FROM customers
WHERE address2 IS NOT NULL;

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

-- none of the values for age or lastName columns are NULL...
SELECT COALESCE(lastName, 'Empty'), *
FROM customers
where (age IS NULL);
