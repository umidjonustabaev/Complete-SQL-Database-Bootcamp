/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date, COUNT(e.emp_no)
FROM employees as e
GROUP BY (hire_date)
ORDER BY (hire_date);




/*
*   Show me all the employees, hired after 1991 and count the number of positions they've had
*   Database: Employees
*/

SELECT
    e.emp_no,
    hire_date,
    (
        SELECT COUNT(*)
        FROM titles t
        WHERE t.emp_no = e.emp_no
    ) AS title_count
FROM
    employees e
WHERE e.hire_date >= '1991-01-01'
ORDER BY (hire_date);




/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/
SELECT
    dept_emp.emp_no,
    last_name,
    first_name,
    dept_name,
    from_date,
    to_date
FROM
    dept_emp
JOIN departments AS d
    ON (
        dept_emp.dept_no = d.dept_no AND
        d.dept_name = 'Development'
    )
JOIN employees AS e
    ON dept_emp.emp_no = e.emp_no;
