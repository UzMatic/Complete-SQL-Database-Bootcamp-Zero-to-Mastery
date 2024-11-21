
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT o.orderid, c.firstname, c.lastname, c.state
FROM orders as o
inner join customers AS c ON c.customerid = o.customerid
WHERE c.state IN('OH','NY','OR')
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




