-- Draw The Triangle 1
-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

SELECT 
    REPEAT('* ', @NUMBER := @NUMBER - 1) 
FROM information_schema.tables, (SELECT @NUMBER:=21) t LIMIT 20