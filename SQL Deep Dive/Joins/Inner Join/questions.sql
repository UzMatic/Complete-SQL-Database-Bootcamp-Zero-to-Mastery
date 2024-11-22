
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT o.orderid, o.orderdate, c.customerid, c.state
FROM orders AS o
INNER JOIN customers AS c ON c.customerid = o.customerid
WHERE state IN('NY','OH','OR')
ORDER BY o.orderid;



/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT p.prod_id, p.title,i.quan_in_stock
FROM products as p
inner join inventory as i on i.prod_id = p.prod_id;

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
SELECT e.emp_no, e.first_name, e.last_name,d.dept_name, d.dept_no 
FROM dept_emp as a
inner join employees as e ON e.emp_no = a.emp_no
inner join departments as d ON d.dept_no = a.dept_no;




