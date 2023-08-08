SELECT *
FROM economies AS e


CREATE OR REPLACE VIEW t_Maryia_Markava_project_SQL_secondary_final AS
SELECT country AS Country, YEAR AS Year, GDP, population AS Population, gini AS Gini
FROM economies AS e
WHERE YEAR BETWEEN 2006 AND 2018
AND country IN ('Albania', 'Andorra', 'Armenia', 'Austria', 'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 
'Bulgaria','Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland', 'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 
'Iceland', 'Ireland','Italy', 'Kazakhstan', 'Latvia', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Malta', 'Moldova', 'Monaco', 'Montenegro', 
'Netherlands','North Maedonia', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russian', 'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 
'Spain', 'Sweden', 'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City');


SELECT *
FROM t_maryia_markava_project_sql_secondary_final; 



