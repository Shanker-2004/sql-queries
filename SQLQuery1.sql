---------------- JOINS
--NO JOIN 
SELECT * FROM customers
SELECT * FROM orders
-----------------------
--inner join
SELECT * 
FROM customers 
INNER JOIN orders
ON id = customer_id
--using 
SELECT c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id
--------------------------
--left join
SELECT * 
FROM customers 
LEFT JOIN orders
ON id = customer_id
--
SELECT c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
-----------------------
--RIGHT JOIN
SELECT * 
FROM customers 
RIGHT JOIN orders
ON id = customer_id
--
SELECT c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
------------------------
--FULL JOIN
SELECT * 
FROM customers 
FULL JOIN orders
ON id = customer_id
--
SELECT c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
-------------------------
--ADVANCED
--LEFT ANTI JOIN (WHICH MEANS NOT MACHING WITH BOTH TABLES ALSO)
SELECT * 
FROM customers 
LEFT JOIN orders
ON id = customer_id
WHERE customer_id is  NULL
---
SELECT c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
left JOIN orders AS o
ON c.id = o.customer_id
WHERE customer_id is NULL
--------------------------
--right anti join
SELECT * 
FROM customers 
right JOIN orders
ON id = customer_id
WHERE id is  NULL
--
SELECT c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
left JOIN orders AS o
ON c.id = o.customer_id
WHERE customer_id is NULL
------------------------------
SELECT * 
FROM customers 
full JOIN orders
ON id = customer_id
WHERE id is  NULL or  customer_id is  NULL
--
SELECT c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
left JOIN orders AS o
ON c.id = o.customer_id
WHERE id is  NULL or  customer_id is  NULL
-------------------------------------------------
SELECT * 
FROM customers 
inner JOIN orders
ON id = customer_id
WHERE customer_id is  NULL
-------------------------------------------------
--set operations
SELECT o.customer_id
FROM 
orders o
union
SELECT c.id
FROM 
customers c
--
select * from orders
select * from customers
--
SELECT o.customer_id
FROM 
orders o
union all
SELECT c.id
FROM 
customers c
---
SELECT o.customer_id
FROM 
orders o
except
SELECT c.id
FROM 
customers c
--
SELECT o.customer_id
FROM 
orders o
intersect   
SELECT c.id
FROM 
customers c
-----------------------
---task

