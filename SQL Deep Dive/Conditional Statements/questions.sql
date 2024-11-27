/**
* Database: Store
* Table: products
* Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'
* if it's between 10 and 20 you show 'average' 
* and of is lower than or equal to 10 you show 'cheap'.
*/
select p.prod_id, p.title, p.price,
        CASE
            WHEN p.price > 20 THEN 'expensive'
            WHEN p.price between 10 AND 20 then 'average'
            ELSE 'cheap'
        END AS "price class"
FROM productS as p
ORDER BY p.price DESC;
