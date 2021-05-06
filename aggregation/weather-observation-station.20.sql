-- Weather Observation Station 20
-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem

SELECT ROUND(x.LAT_N,4) from STATION x, STATION y
GROUP BY x.LAT_N
HAVING SUM(SIGN(1-SIGN(y.LAT_N-x.LAT_N))) = (COUNT(*)+1)/2;
