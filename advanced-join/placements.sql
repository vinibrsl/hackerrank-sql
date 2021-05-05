-- Placements
-- https://www.hackerrank.com/challenges/placements/problem

SELECT s.Name
FROM Students s , Friends f , Packages p1,Packages p2
WHERE s.ID = f.ID and s.ID = p1.ID and f.Friend_ID = p2.ID and
p1.Salary < p2.Salary
ORDER BY p2.Salary;
