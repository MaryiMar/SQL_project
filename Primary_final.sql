SELECT *
FROM czechia_payroll AS cp 

CREATE OR REPLACE VIEW Table1 AS
SELECT industry_branch_code  AS Industry, 
SUM (value) AS Salary,
payroll_year AS 'Years'
FROM czechia_payroll AS cp
WHERE cp.value_type_code = 5958
AND industry_branch_code IS NOT NULL
GROUP BY industry_branch_code,
payroll_year 
;


SELECT *
FROM Table1;


SELECT *
FROM czechia_payroll_industry_branch AS cpib 


CREATE OR REPLACE VIEW Table2 AS
SELECT cpib.name AS Industry, 
t1.Salary,t1.Years
FROM Table1 AS t1
JOIN czechia_payroll_industry_branch AS cpib 
ON t1.industry = cpib.code; 


SELECT *
FROM Table2;


SELECT *
FROM czechia_price AS cp 

SELECT value AS Value, Category_code, YEAR (date_from) AS Year
FROM czechia_price AS cp;

CREATE OR REPLACE VIEW Table3 AS
SELECT Category_code, 
ROUND (SUM (value),2) AS Value,  
YEAR (date_from) AS Year
FROM czechia_price AS cp
GROUP BY Category_code, YEAR(date_from);

SELECT *
FROM Table3;



SELECT t2.Industry, 
t2.Salary, 
t3.Category_code AS Product, 
t3.Value AS Price, 
t3.Year
FROM Table2 AS t2
JOIN Table3 AS t3
ON t2.Years = t3.YEAR
ORDER BY YEAR DESC;

CREATE OR REPLACE VIEW t_Maryia_Markava_project_SQL_primary_final AS
SELECT t2.Industry, 
t2.Salary, 
t3.Category_code AS Product, 
t3.Value AS Price, 
t3.Year
FROM Table2 AS t2
JOIN Table3 AS t3
ON t2.Years = t3.YEAR
ORDER BY YEAR DESC;

SELECT *
FROM t_Maryia_Markava_project_SQL_primary_final;




