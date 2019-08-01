-- 15 Days of Learning SQL
-- https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem

select b.submission_date,a.cnt,b.hacker_id,c.name
from (select submission_date,count(distinct hacker_id) cnt
from (select hacker_id,submission_date, row_number() over (partition by hacker_id order by submission_date) numbering
from submissions
group by hacker_id,submission_date)
where numbering=to_date(submission_date,'yyyy-mm-dd')-to_date('2016-03-01','yyyy-mm-dd')+1
group by submission_date) a
right join (select submission_date,hacker_id, cnt
from (select submission_date,hacker_id,count(distinct submission_id) cnt,
row_number() over (partition by submission_date order by count(distinct submission_id) desc,hacker_id) numbering
from submissions
group by submission_date,hacker_id)
where numbering =1 ) b
on a.submission_date=b.submission_date
left join hackers c
on b.hacker_id=c.hacker_id
order by b.submission_date;