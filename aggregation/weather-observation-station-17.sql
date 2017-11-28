-- Weather Observation Station 17
-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem

SELECT ROUND(LONG_W, 4)
FROM Station
WHERE LAT_N = (SELECT MIN(LAT_N) FROM Station WHERE LAT_N > 38.7780);