
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/
SELECT e.emp_no, COUNT(t.title) "Number of titles"
FROM employees as e
join titles as t USING(emp_no)
WHERE EXTRACT(YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
HAVING COUNT(t.title) > 2
ORDER BY e.emp_no;



/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
SELECT e.emp_no, COUNT(s.salary) AS "Salary changes"
FROM employees as e
INNER JOIN salaries as s USING(emp_no)
INNER JOIN dept_emp AS d USING(emp_no)
WHERE d.dept_no = 'd005'
GROUP BY e.emp_no
HAVING COUNT(s.salary) > 15;


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
SELECT e.emp_no, COUNT(d.dept_no) AS "No_dept"
FROM employees as e
JOIN dept_emp AS d USING(emp_no)
GROUP BY e.emp_no
HAVING COUNT(d.dept_no) > 1;

