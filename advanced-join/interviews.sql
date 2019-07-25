-- Interviews
-- https://www.hackerrank.com/challenges/interviews/problem

WITH STATS1 AS (
SELECT
     challenge_id
    ,SUM(ss.total_submissions) AS total_submissions
    ,SUM(ss.total_accepted_submissions) AS total_accepted_submissions 
FROM
    CHALLENGES ch
    LEFT JOIN SUBMISSION_STATS ss
        USING(challenge_id)
GROUP BY
    challenge_id
)
, STATS2 AS (
SELECT
    challenge_id
    ,total_submissions
    ,total_accepted_submissions
    ,SUM(vs.total_views) AS total_views
    ,SUM(vs.total_unique_views) AS total_unique_views
FROM
    STATS1
    LEFT JOIN VIEW_STATS vs
        USING(challenge_id)
GROUP BY
    challenge_id
    ,total_submissions
    ,total_accepted_submissions
)
SELECT
      contest_id
    , c.hacker_id
    , c.name
    , SUM(s2.total_submissions) AS total_submissions
    , SUM(s2.total_accepted_submissions) AS total_accepted_submissions
    , SUM(s2.total_views) AS total_views
    , SUM(s2.total_unique_views) AS total_unique_views
FROM
    CONTESTS c
    JOIN COLLEGES co
        USING(contest_id)
    JOIN CHALLENGES ch
        USING(college_id)
    JOIN STATS2 s2
        ON ch.challenge_id = s2.challenge_id
GROUP BY
      contest_id
    , c.hacker_id
    , c.name
ORDER BY
    contest_id;