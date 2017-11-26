-- The PADS
-- https://www.hackerrank.com/challenges/the-pads/problem

SELECT CONCAT(Name, '(', LEFT(Occupation, 1) , ')')
FROM Occupations
ORDER BY Name;

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.')
FROM Occupations
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation;
