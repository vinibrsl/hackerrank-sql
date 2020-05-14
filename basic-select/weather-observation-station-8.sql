-- Weather Observation Station 8
-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem

SELECT DISTINCT City
FROM Station
WHERE LEFT(City, 1) IN ('a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U') AND
      RIGHT(City, 1) IN ('a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U');

-- or

SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[aeiou].*[aeiou]$'
