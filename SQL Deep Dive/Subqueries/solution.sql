/* TRY TO WRITE THESE AS JOINS FIRST */
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

-- using joins
SELECT
    orderid,
    orders.customerid,
    firstname,
    state
FROM orders
JOIN customers
ON orders.customerid = customers.customerid
WHERE state IN ('oh', 'ny', 'or');


-- using subqueries
WITH state_customers AS (
    SELECT customerid, firstname, lastname, state FROM customers WHERE state IN ('OH', 'NY', 'OR')
)
SELECT
    orderid,
    o.customerid,
    s.firstname,
    s.lastname,
    s.state
FROM orders AS o, state_customers AS s
WHERE s.customerid = o.customerid
ORDER BY (orderid);

/*
* DB: Employees
* Table: employees
* Question: Filter employees who have emp_no 110183 as a manager
*/

-- using joins
SELECT e.emp_no, first_name, last_name, title
FROM employees AS e
JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (t.title <> 'Manager' AND e.emp_no <> 110183)
ORDER BY (emp_no);


-- using subqueries
WITH filtered_emps AS (
    SELECT emp_no, title 
    FROM titles 
    WHERE (emp_no != 110183 AND title != 'Manager')
)
SELECT e.emp_no, first_name, last_name, f.title
FROM 
    employees AS e,
    filtered_emps AS f
WHERE e.emp_no = f.emp_no
ORDER BY (emp_no);







