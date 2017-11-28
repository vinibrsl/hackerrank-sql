-- Weather Observation Station 15
-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem

SELECT ROUND(LONG_W, 4)
FROM Station
WHERE LAT_N = (SELECT MAX(LAT_N) FROM Station WHERE LAT_N < 137.2345);