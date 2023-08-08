SELECT country, YEAR,GDP
FROM t_maryia_markava_project_sql_secondary_final
WHERE country = 'Czech republic'
ORDER BY YEAR; 



SELECT mm1.YEAR, mm1.GDP AS GDP, ROUND (AVG (mm2.Price),2) AS Price,
ROUND(AVG(mm2.Salary),2) AS Salary
FROM t_Maryia_Markava_project_sql_secondary_final AS mm1
JOIN t_Maryia_Markava_project_SQL_primary_final AS mm2
ON mm1.YEAR = mm2.YEAR
WHERE mm1.Country='Czech republic'
GROUP BY mm1.YEAR, mm1.GDP;

