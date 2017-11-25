-- Weather Observation Station 3
-- Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.
-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem

SELECT DISTINCT City
FROM Station
WHERE Id % 2 = 0;
