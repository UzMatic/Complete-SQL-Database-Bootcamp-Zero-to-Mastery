/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/
CREATE VIEW "90-95" AS
select *
FROM employees
where hire_date between '1990-01-01' and '1995-12-31';
  
-- ...

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/
CREATE VIEW "bigbucks" AS
SELECT *
FROM employees e
JOIN salaries AS s USING (emp_no)
WHERE s.salary > 80000
ORDER BY e.emp_no


