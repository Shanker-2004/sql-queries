select * from customers
select 
first_name,
country,
concat(first_name,'-',country) as con_names
from customers
-----------------------------------
select first_name,
len(first_name) as len_name
from customers
----
select first_name,
len(trim(first_name)) as len_name
from customers
----------------------------
select first_name,
upper(first_name) as upper_name
from customers
----
select first_name,
lower(first_name) as lower_name
from customers
---------------------------------
select first_name,
trim(first_name) as upper_name
from customers
---
select first_name
from customers
where first_name!=trim(first_name)
--
select '2022-03-01' as old_date,
replace('2022-03-01','-','') as new_name
----
select '2022-03-01' as old_date,
replace('2022-03-01','-','/') as new_name
--------------------------------------------------
select first_name,
left(trim(first_name),2) as firs_name
from customers
-----
select first_name,
right(trim(first_name),2) as firs_name
from customers
---
select first_name,
substring(first_name,3,3) as firs_name
from customers
------------------------
select 3.516 as old_val,
round(3.516,2) as new_val,
round(3.516,1) as new_val,
round(3.516,0) as new_val
-------
select -10 as old_val,
abs(-10) as new_val
---
select * from orders
select order_date,
day(order_date) day,
month(order_date) month,
year(order_date) year
from orders
--
select order_date,
datepart(day, order_date) day,
datepart(year, order_date) year,
datepart(month, order_date) month,
datepart(week, order_date) week,
--datepart(hour, order_date) hour,
datepart(quarter, order_date) quarter
from orders
-----

select order_date,
datename(day, order_date) day,
datename(year, order_date) year,
datename(month, order_date) month,
datename(weekday, order_date) week
from orders
---------------------
select order_date,
datetrunc(day, order_date) day,
datetrunc(year, order_date) year,
datetrunc(month, order_date) month
from orders


