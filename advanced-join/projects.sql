-- Projects
-- https://www.hackerrank.com/challenges/projects/problem

set @row1:=0; set @row2:=0; select p_start.start_date,p_end.end_date from (select @row1:=@row1+1 as rown, start_date from projects where start_date not in (select end_date from projects)) as p_start inner join (select @row2:=@row2+1 as rown, end_date from projects where end_date not in (select start_date from projects)) as p_end on p_start.rown=p_end.rown order by p_end.end_date-p_start.start_date,p_start.start_date;