-- Occupations
-- https://www.hackerrank.com/challenges/occupations/problem

SELECT 
    D.Name, 
    P.Name, 
    S.Name, 
    A.Name 
FROM (
    SELECT 
        @rownum:=@rownum+1 AS rownum, 
        Name 
    FROM (SELECT @rownum:=0) r, 
        Occupations 
    WHERE Occupation = 'Doctor' 
    ORDER BY Name
) AS D 
RIGHT JOIN (
    SELECT 
        @rownumP:=@rownumP+1 AS rownumP, 
        Name 
    FROM (SELECT @rownumP:=0) r, Occupations 
    WHERE Occupation = 'Professor' ORDER BY Name
) AS P ON D.rownum = P.rownumP LEFT JOIN (SELECT @rownumS:=@rownumS+1 AS rownumS, Name FROM (SELECT @rownumS:=0) r, Occupations WHERE Occupation = 'Singer' ORDER BY Name) AS S ON P.rownumP = S.rownumS LEFT JOIN (SELECT @rownumA:=@rownumA+1 AS rownumA, Name FROM (SELECT @rownumA:=0) r, Occupations WHERE Occupation = 'Actor' ORDER BY Name) AS A ON P.rownumP = A.rownumA;