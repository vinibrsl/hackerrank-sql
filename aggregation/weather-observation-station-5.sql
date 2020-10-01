-- Weather Observation Station 5
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

SELECT TOP 1 city, LEN(city) FROM station ORDER BY LEN(city),city; 
SELECT TOP 1 city, LEN(city) FROM station ORDER BY LEN(city) DESC,city;
