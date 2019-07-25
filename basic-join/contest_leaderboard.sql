-- Contest Leaderboard
-- https://www.hackerrank.com/challenges/contest-leaderboard/problem

select * from 
(select hackers.hacker_id, name, sum(subs.maxscore) as totalscore from hackers INNER JOIN 
(select hacker_id, challenge_id, max(score) as maxscore from submissions
group by hacker_id, challenge_id) subs
on hackers.hacker_id=subs.hacker_id
group by hackers.hacker_id, hackers.name) data 
where data.totalscore > 0
order by data.totalscore desc, hacker_id;