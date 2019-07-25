-- Draw The Triangle 2
-- https://www.hackerrank.com/challenges/draw-the-triangle-2/problem

SELECT REPEAT('* ', @NUMBER := @NUMBER + 1) FROM information_schema.tables, (SELECT @NUMBER:=0) t LIMIT 20