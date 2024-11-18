
/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/SELECt firstname, lastname, age, income, country
FROM customers
WHERE (age < 30 or age >= 50 )
AND (country = 'Australia' OR country = 'Japan')
AND income > 50000;

/*
* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/SELECt SUM(totalamount) AS totalamount
FROM orders
WHERE (orderdate >= '2004-06-01' AND orderdate < '2004-07-01')
AND totalamount > 100 ;

THe total sales for amounts over 100 in the month of june 2004 = 205226.06 
