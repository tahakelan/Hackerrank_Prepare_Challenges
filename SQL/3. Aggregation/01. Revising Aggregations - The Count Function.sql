-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
-- # Difficulty : Easy

select count(distinct ID)
from CITY
where POPULATION > 100000
;