-- Contest Leaderboard
-- https://www.hackerrank.com/challenges/contest-leaderboard/problem

select
  hackers.hacker_id,
  hackers.name,
  SUM(scores.max_score)
from
  (
    select
      hacker_id,
      challenge_id,
      MAX(score) AS max_score
    from
      submissions
    group by
      challenge_id,
      hacker_id
  ) AS scores
  inner join hackers ON scores.hacker_id = hackers.hacker_id
group by
  hackers.hacker_id,
  hackers.name
having
  sum(scores.max_score) > 0
order by
  SUM(scores.max_score) DESC,
  hackers.hacker_id ASC;
