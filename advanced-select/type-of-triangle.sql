-- Type of Triangle
-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:
   Equilateral: It's a triangle with  sides of equal length.
   Isosceles: It's a triangle with  sides of equal length.
   Scalene: It's a triangle with  sides of differing lengths.
   Not A Triangle: The given values of A, B, and C don't form a triangle.
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

SELECT
  CASE
    WHEN A = B AND B = C then "Equilateral"
    WHEN A + B <= C then "Not A Triangle"
    WHEN A + C <= B then "Not A Triangle"
    WHEN B + C <= A then "Not A Triangle"
    WHEN A = B AND A <> C then "Isosceles"
    WHEN A = C AND A <> B then "Isosceles"
    WHEN B = C AND A <> B then "Isosceles"
    ELSE "Scalene"
  END
FROM Triangles
