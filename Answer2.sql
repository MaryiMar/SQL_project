SELECT *
FROM t_Maryia_Markava_project_SQL_primary_final;


SELECT Product,YEAR,Price AS Average_price,
ROUND(AVG(Salary),2) AS Average_salary,
ROUND((ROUND(AVG(DISTINCT Salary),2)/Price),2) AS Answer2
FROM t_maryia_markava_project_sql_primary_final AS mm1
WHERE Product IN ('Mléko polotučné pasterované',
'Chléb konzumní kmínový')
AND YEAR IN (2006,2018)
GROUP BY Product, Price, YEAR
ORDER  BY Year;
