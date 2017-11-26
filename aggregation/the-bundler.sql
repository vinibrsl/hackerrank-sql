-- The Blunder
-- https://www.hackerrank.com/challenges/the-blunder/problem

SELECT CEIL(AVG(Salary) - AVG(REPLACE(CAST(Salary AS CHAR), "0", "")))
FROM Employees;