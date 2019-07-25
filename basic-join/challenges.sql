-- Challenges
-- https://www.hackerrank.com/challenges/challenges/problem

WITH PARTITIONED AS (SELECT c.hacker_id, COUNT(c.challenge_id) AS count_chal,ROW_NUMBER() OVER (PARTITION BY COUNT(c.challenge_id) ORDER BY c.hacker_id) AS rown FROM Challenges c GROUP BY c.hacker_id)
SELECT h.hacker_id, h.name,p.count_chal FROM Hackers h INNER JOIN PARTITIONED p ON h.hacker_id=p.hacker_id WHERE (p.count_chal=(SELECT MAX(count_chal) FROM PARTITIONED) OR p.count_chal NOT IN (SELECT count_chal FROM PARTITIONED where rown=2)) ORDER BY p.count_chal desc, h.hacker_id;