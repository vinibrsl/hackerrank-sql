-- Japanese Cities' Attributes
-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem

SELECT *
FROM City
WHERE CountryCode = 'JPN';
