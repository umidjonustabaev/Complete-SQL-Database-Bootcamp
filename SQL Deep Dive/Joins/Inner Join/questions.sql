
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

SELECT orderId, orderDate, o.customerId, c.state
FROM orders AS o
JOIN customers AS c
ON c.customerId = o.customerId
WHERE c.state IN ('OH', 'NY', 'OR')
ORDER BY (orderId);


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

SELECT
    p.prod_id AS id,
    p.title,
    i.quan_in_stock AS quantity
FROM products AS p
JOIN inventory AS i
ON i.prod_id = p.prod_id
ORDER BY (quan_in_stock) DESC;




/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_name
FROM dept_emp
JOIN employees AS e
ON e.emp_no = dept_emp.emp_no
JOIN departments AS d
ON dept_emp.dept_no = d.dept_no
ORDER BY (emp_no);


