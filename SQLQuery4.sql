SELECT * FROM customers
SELECT id,country FROM customers
SELECT * FROM customers WHERE score>500
SELECT * FROM customers WHERE score=500
SELECT * FROM customers  ORDER BY score ASC
SELECT * FROM customers ORDER BY score DESC
SELECT * FROM customers ORDER BY country ASC,score DESC
SELECT country,count(score) FROM customers GROUP BY country
SELECT country,STDEV(score) FROM customers GROUP BY country
SELECT country,AVG(score) FROM customers GROUP BY country
SELECT country,sum(score) FROM customers GROUP BY country
SELECT country,id ,varp(score) as total_score FROM customers GROUP BY country,id
SELECT country,count(id) total_members,sum(score) as total_score FROM customers GROUP BY country
SELECT country,sum(score) as total_score FROM customers where score>400 GROUP BY country HAVING sum(score)>800
SELECT country,sum(score) as total_score FROM customers where score!=0 GROUP BY country HAVING sum(score)>400
SELECT DISTINCT country FROM customers
 SELECT TOP 3* FROM customers
SELECT TOP 3* FROM customers order by score desc
SELECT TOP 3* FROM customers order by score asc*/
------------------------------------------------------
------------------------------------------------------
--all conditions performs in one query
SELECT TOP 3  country ,sum(score) AS total_score FROM customers where score!=0 GROUP BY country HAVING sum(score)>350 ORDER BY total_score desc
------------------------------------------------------
------------------------------------------------------
 SELECT 123 AS W
 SELECT 11	 AS R
 SELECT * ,'weebs' as r FROM customers
 -----------------------------------------------------
 -----------------------------------------------------
 --ddl queries
 --
CREATE TABLE raju (
    ID INT NOT NULL,
    P_NAME VARCHAR(20) NOT NULL,
 Birth_Date DATE,
CONSTRAINT PK_raju PRIMARY KEY (ID)
)

SELECT * from raju
ALTER TABLE raju ADD Email varchar(30) NOT NULL
SELECT * from raju
INSERT INTO raju(ID,P_NAME,Birth_Date,Email)
         VALUES(1, 'shanker','2004-02-12','shanker@gmail.com'),
               (2, 'SASI','2004-02-15','sRi@gmail.com'),
               ( 3, 'damal','2004-09-13','sai@gmail.com'),
               (4,'SASI','2004-04-24','sas@gmail.com')
TRUNCATE TABLE raju
SELECT * from raju
UPDATE raju 
SET p_NAME='SASI'
WHERE ID=2
DELETE FROM raju 
where id=1
------------------------------------------------
---------------------------------------------------------------------------------------------------------------
--COMPARISION OPERATORS
-- USING = OPERATOR
SELECT * FROM raju
where  P_NAME='SASI'
------------------------------------------------
---USING <> OPERATOR
SELECT * FROM raju
where  P_NAME <>'SASI'

SELECT * FROM raju
where  P_NAME !='SASI'
------------------------------------------------
--- USING (<,>,>=,<=) THESE OPERATORS
SELECT * FROM raju
where  ID>3
---
SELECT * FROM raju
where  ID<3
----
SELECT * FROM raju
where  ID>=3
--
SELECT * FROM raju
where  ID<=3
--------------------------------------------------------------
--------------------------------------------------------------
----LOGICAL OPERATORS
-----USING AND OPERATOR
SELECT * FROM raju 
where P_NAME='SASI' AND ID<3
---USING or OPERATOR
SELECT * FROM raju 
where P_NAME='damal' OR ID>2
---
SELECT * FROM raju 
where  NOT P_NAME='damal'
---------------------------------------------------------
--------------------------------------------------------
----RANGE OPERATOR 
---USING BETWEEN OPERATOR
SELECT * FROM raju 
where ID BETWEEN 2 AND 4
----------------------------------------------------------
----------------------------------------------------------
--MEMBERSHIP OPERATORS
----USING IN OPERATOR
SELECT * FROM raju
where 4 IN (ID)
--
SELECT * FROM raju
where 4 NOT IN (ID)
------------------------------------------------------------
--SEARCH OPERATOR
--USING LIKE OPERATOR
SELECT * FROM raju
where P_NAME LIKE'%'
--
SELECT * FROM raju
where P_NAME LIKE'%I%'
--
SELECT * FROM raju
where P_NAME LIKE'%I'
--
SELECT * FROM raju
where P_NAME LIKE'_A'
--
SELECT * FROM raju
where P_NAME LIKE'%I%'
--







