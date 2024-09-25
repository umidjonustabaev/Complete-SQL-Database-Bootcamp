/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

CREATE VIEW "90-95" AS
    SELECT emp_no, last_name, first_name, hire_date
    FROM employees
    WHERE hire_date BETWEEN '1990-01-01' AND '1995-12-12'
    ORDER BY (hire_date);

SELECT * FROM "90-95";




/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

CREATE VIEW "bigbucks" AS
    SELECT
        emp_no,
        last_name,
        first_name,
        salary
    FROM employees AS e
    JOIN salaries AS s 
    USING(emp_no)
    WHERE salary > 80000
    ORDER BY (salary);

SELECT * FROM "bigbucks";
