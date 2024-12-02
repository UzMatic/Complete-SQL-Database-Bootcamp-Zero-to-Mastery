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
select d.dept_no, d.emp_no , t.title
from dept_emp as d
join titles as t using(emp_no)
WHERE emp_no ='110183'
