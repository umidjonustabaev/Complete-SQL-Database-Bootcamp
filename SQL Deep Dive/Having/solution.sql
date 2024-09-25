
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/
SELECT
    e.emp_no,
    first_name,
    last_name,
    hire_date,
    COUNT(t.title)
FROM employees AS e
JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE hire_date >= '1991-01-01'
GROUP BY(e.emp_no)
HAVING COUNT(t.title) > 2;




/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
SELECT
    e.emp_no,
    first_name,
    last_name,
    COUNT(s.salary) AS salary_changes
FROM dept_emp AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no
JOIN departments as d
ON d.dept_no = e.dept_no
JOIN employees
ON e.emp_no = employees.emp_no
WHERE d.dept_name = 'Development'
GROUP BY(e.emp_no, employees.first_name, employees.last_name)
HAVING COUNT(s.salary) > 15;




/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
SELECT
    e.emp_no,
    COUNT(d.dept_no) AS departments_cnt
FROM dept_emp as e
JOIN departments AS d
ON d.dept_no = e.dept_no
GROUP BY(e.emp_no)
HAVING COUNT(d.dept_no) > 1
ORDER BY(departments_cnt);
