-- Weather Observation Station 14
-- https://www.hackerrank.com/challenges/weather-observation-station-14/problem

SELECT TRUNCATE(MAX(LAT_N), 4)
FROM Station
WHERE LAT_N < 137.2345;