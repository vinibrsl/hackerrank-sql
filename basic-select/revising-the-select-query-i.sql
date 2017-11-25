-- Revising the Select Query I
-- Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.
-- https://www.hackerrank.com/challenges/revising-the-select-query/problem

SELECT *
FROM City
WHERE CountryCode = 'USA' AND Population >= 100000;
