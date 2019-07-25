-- New Companies
-- https://www.hackerrank.com/challenges/the-company/problem

select
    C.company_code, 
    group_concat( distinct C.founder),
    count(distinct LM.lead_manager_code),
    count(distinct SM.senior_manager_code),
    count(distinct M.manager_code),
    count(distinct E.employee_code)
from Company C
left join Lead_Manager LM on LM.company_code = C.company_code
left join Senior_Manager SM on SM.lead_manager_code = LM.lead_manager_code
left join Manager M on M.senior_manager_code = SM.senior_manager_code
left join Employee E on E.manager_code = M.manager_code
group by C.company_code
order by C.company_code
