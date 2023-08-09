# SQL_project
All information about the project (SQL script and information about output data)

## Introduction

The purpose of the project was to answer a few defined research questions that address the availability of basic foods to the general public. Therefore, there was a need to prepare robust databases in which it will be possible to see a comparison of the availability of food based on average incomes for a certain period of time. As additional task, it was necessary to prepare a table with GDP, GINI coefficient and population of other European countries in the same period as the primary overview for the Czech Republic.

## Research questions

1. Are salaries rising in all industries over the years, or falling in some?
2. How many litres of milk and kilograms of bread can be bought in the first and last comparable periods in the available price and salary data?
3. Which food category is increasing in price the slowest (has the lowest percentage year-on-year increase)?
4. Has there been a year in which the year-on-year increase in food prices was significantly higher than salary growth (greater than 10%)?
5. Does the level of GDP affect changes in salary and food prices? Or, if the GDP increases more significantly in one year, will this be reflected in food prices or salary in the same or the following year by a more significant increase?

## Project output

The output is two tables in the database from which the required data can be obtained. There are SQL views created under the name primary_final and secondary_final.
A set of SQL Queries has been prepared, which will provide the data for answering the set of research questions from the above-mentioned prepared tables (views).
Each question is prepared in individual SQL file.

1. Are salaries rising in all industries over the years, or falling in some?

The calculation consisted in comparing the actual values with the previous ones. By value, it means the average salary for each year for each industry separately.
The result confirms that salaries had been growing over the years in all industries. There was a salary decrease in many sectors in 2013. This may be due to the economic crisis. But for example, the salary was increasing for Transport and storage industry for all years based on the available data. 
 
2. How many litres of milk and kilograms of bread can be bought in the first and last comparable periods in the available price and salary data?

The first and last comparable periods are 2006 and 2018. It was necessary to determine the average price for bread and milk and average salary for the years 2006 and 2018. According to the calculation, it was possible to buy 10,299.64 kg of bread in 2006 and 10,737.91 kg in 2018. As for milk, 11,497.94 litres in 2006 and 13,132.53 litres in 2018.

3. Which food category is increasing in price the slowest (has the lowest percentage year-on-year increase)?

In order to be able to answer this question, it was necessary to calculate the percentage difference in the price of the product for the monitored periods (2006 - 2018). After calculating the percentage difference, the average percentage difference for each type of food was calculated. The calculation says that granulated sugar is rising in price the slowest. It has the lowest average percentage increase year-on-year (-1,92).

4. Has there been a year in which the year-on-year increase in food prices was significantly higher than salary growth (greater than 10%)?

We calculated average salary year-to-year difference as well as average food price year-to-year differece which was then compared together. Based on the results there is no year in which the year-on-year increase in food prices was significantly higher than the increase in wages (greater than 10%).

5. Does the level of GDP affect changes in salary and food prices? Or, if the GDP increases more significantly in one year, will this be reflected in food prices or salary in the same or the following year by a more significant increase?

According to data, GDP was increasing many years, with huge drop in 2009 probably because of financial crisis which occured 2007-2008. Based on the data, the food prices is not in direct proportion with GDP. Also we can see in the data that when GDP increased significantly, the salary at that year didn't increase at same rate, but rather with delay in 1-2 years. This can be seen for example in years 2006 and 2014 where GDP increased more significantly, but the salaries gained significantly in following years 2007 respectively 2016 and 2017 for the other time period.    
