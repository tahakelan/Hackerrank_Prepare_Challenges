-- https://www.hackerrank.com/challenges/earnings-of-employees/problem
-- # Difficulty : Easy

select (months*salary) as earnings, count(employee_id)
from employee

group by earnings
order by earnings desc
limit 1
;