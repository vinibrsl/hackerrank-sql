-- Weather Observation Station 4
-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem

select (count(CITY)-COUNT(DISTINCT CITY)) from STATION;
