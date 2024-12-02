/* TRY TO WRITE THESE AS JOINS FIRST */
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
/*with joins*/
select o.orderid, o.orderdate, o.customerid, c.firstname, c.lastname, c.state
from orders as o 
join customers as c using(customerid)
where state in('OH','NY','OR')
order by o.customerid;
/* with subquery*/
SELECT 
    o.orderid, 
    o.orderdate, 
    o.customerid, 
    c.firstname, 
    c.lastname, 
    c.state
FROM orders AS o
JOIN (
    SELECT customerid, firstname, lastname, state
    FROM customers
    WHERE state IN ('OH', 'NY', 'OR')
) AS c ON o.customerid = c.customerid
ORDER BY o.customerid;


/*
* DB: Employees
* Table: employees
* Question: Filter employees who have emp_no 110183 as a manager
*/
/* with join */
SELECT e.emp_no, e.first_name, e.last_name, t.title
FROM employees as e 
join dept_emp as de using(emp_no)
JOIN titles as t using(emp_no)
WHERE emp_no = 110183 and title = 'Manager';

/* with subquery */
SELECT e.emp_no, e.first_name, e.last_name, 
       (SELECT t.title 
        FROM titles AS t 
        WHERE t.emp_no = e.emp_no AND t.title = 'Manager') AS title
FROM employees AS e
WHERE e.emp_no = 110183
  AND EXISTS (
      SELECT de.emp_no
      FROM dept_emp AS de
      WHERE de.emp_no = e.emp_no
  );




