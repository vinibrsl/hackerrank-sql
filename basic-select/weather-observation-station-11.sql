-- Weather Observation Station 11
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem

SELECT DISTINCT City
FROM Station
WHERE LEFT(City, 1) NOT IN ('A', 'E', 'I', 'O', 'U') OR
      RIGHT(City, 1) NOT IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');
