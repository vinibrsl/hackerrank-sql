-- The Report
-- https://www.hackerrank.com/challenges/the-report/problem

SELECT IF(g.grade >= 8, s.name, NULL), g.grade, s.marks
FROM students s
INNER JOIN grades g ON s.marks BETWEEN min_mark and max_mark
ORDER BY g.grade DESC, s.name, s.marks ASC;