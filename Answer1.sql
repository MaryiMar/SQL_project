
SELECT *
FROM t_Maryia_Markava_project_SQL_primary_final;



SELECT  Industry, AVG(Salary) AS Average_Salary, Year,
CASE 
	WHEN (AVG(Salary) > LAG(AVG(Salary),1) OVER(PARTITION BY Industry ORDER BY Year)) THEN 'INCREASING'
    WHEN (AVG(Salary) < LAG(AVG(Salary),1) OVER(PARTITION BY Industry ORDER BY Year)) THEN 'DECREASING'
ELSE 'N/A' END AS Answer
FROM t_Maryia_Markava_project_SQL_primary_final AS mm1
GROUP BY Industry, Year;
