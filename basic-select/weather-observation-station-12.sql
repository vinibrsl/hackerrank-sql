-- Weather Observation Station 12
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem

SELECT DISTINCT City
FROM Station
WHERE LEFT(City, 1) NOT IN ('A', 'E', 'I', 'O', 'U') AND
      RIGHT(City, 1) NOT IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');
