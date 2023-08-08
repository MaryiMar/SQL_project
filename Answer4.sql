SELECT *
FROM t_Maryia_Markava_project_SQL_primary_final;


CREATE OR REPLACE VIEW t_industry AS
SELECT Industry, Year,Salary,
ROUND(LAG(AVG(Salary),1) OVER (PARTITION BY Industry ORDER BY (Year)),2) AS Previous_value_Salary,
ROUND(((AVG(Salary) - (LAG(AVG(Salary),1) OVER (PARTITION BY Industry ORDER BY (Year))))/(LAG(AVG(Salary),1) OVER (PARTITION BY Industry ORDER BY (Year)))) * 100,2) AS Perc_difference_Salary
FROM t_Maryia_Markava_project_SQL_primary_final
GROUP BY Industry,Salary, YEAR;

CREATE OR REPLACE VIEW t_product AS
SELECT Product,Year,Price,
ROUND(LAG(AVG(Price),1) OVER (PARTITION BY Product ORDER BY (Year)),2) AS Previous_value_Product,
ROUND(((AVG(Price) - (LAG(AVG(Price),1) OVER (PARTITION BY Product ORDER BY (Year))))/(LAG(AVG(Price),1) OVER (PARTITION BY Product ORDER BY (Year)))) * 100,2) AS Perc_difference_Product
FROM t_Maryia_Markava_project_SQL_primary_final
GROUP BY Product,YEAR, Price;



SELECT ti.YEAR, ROUND(AVG(ti.Perc_difference_Salary),2) AS Salary_Difference, ROUND(AVG(tp.Perc_difference_Product),2) AS Product_Price_Difference,
IF ((ROUND(AVG(tp.Perc_difference_Product),2) - ROUND(AVG(ti.Perc_difference_Salary),2)) > 10, "YES", "NO") AS Answer
FROM t_industry AS ti
JOIN t_product AS tp 
ON ti.YEAR = tp.YEAR
GROUP BY ti.YEAR;
