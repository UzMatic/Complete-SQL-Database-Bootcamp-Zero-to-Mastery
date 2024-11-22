/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/
SELECT hire_date, COUNT(hire_date)
FROM employees
GROUP BY hire_date;

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/
SELECT e.emp_no, COUNT(t.title) as "Number of titles"
FROM employees as e
join titles as t USING(emp_no)
WHERE EXTRACT(YEAR FROM e.hire_date) > '1991'
GROUP BY e.emp_no;


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name, de.from_date, de.to_date
FROM employees as e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Development'
GROUP BY e.emp_no, e.first_name, e.last_name, d.dept_name, de.from_date, de.to_date;
