/*
*  Calculate the total number of employees per department using grouping sets
*  Database: Employees
*  Table: Employees
*/

SELECT e.dept_no, COUNT(e.emp_no)
FROM dept_emp as e
GROUP BY GROUPING SETS ((e.dept_no), ())
ORDER BY e.dept_no;



/*
*  Calculate the total average salary per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/
SELECT e.dept_no, AVG(salary)
FROM dept_emp AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no
GROUP BY GROUPING SETS((e.dept_no), ())
ORDER BY e.dept_no;
