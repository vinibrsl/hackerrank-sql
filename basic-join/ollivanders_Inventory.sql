-- Ollivander's Inventory
-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

select
(
    select w1.id from wands as w1
    inner join wands_property as p1
    on w1.code = p1.code
    where p1.age=wands_property.age 
    and w1.coins_needed=min(wands.coins_needed)
),

wands_property.age, min(wands.coins_needed), wands.power

from wands

inner join wands_property
on wands.code = wands_property.code

where wands_property.is_evil=0

group by wands.power desc, wands_property.age desc