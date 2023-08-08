SELECT *
FROM t_Maryia_Markava_project_SQL_primary_final;



SELECT Product, Price, Year,
ROUND(LAG(AVG(Price),1) OVER (PARTITION BY Product ORDER BY (Year)),2) AS Previous_value,
ROUND(((AVG(Price) - (LAG(AVG(Price),1) OVER (PARTITION BY Product ORDER BY (Year))))/(LAG(AVG(Price),1) OVER (PARTITION BY Product ORDER BY (Year)))) * 100,2) AS Perc_difference
FROM t_Maryia_Markava_project_SQL_primary_final
GROUP BY Product, YEAR
;


CREATE OR REPLACE VIEW Answer AS
SELECT Product, Price, Year,
ROUND(LAG(AVG(Price),1) OVER (PARTITION BY Product ORDER BY (Year)),2) AS Previous_value,
ROUND(((AVG(Price) - (LAG(AVG(Price),1) OVER (PARTITION BY Product ORDER BY (Year))))/(LAG(AVG(Price),1) OVER (PARTITION BY Product ORDER BY (Year)))) * 100,2) AS Perc_difference
FROM t_Maryia_Markava_project_SQL_primary_final
GROUP BY Product, YEAR
;

SELECT Product, ROUND(AVG(Perc_difference),2) AS Answer3
FROM Answer AS a
GROUP BY Product
ORDER BY Answer3;