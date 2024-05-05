-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
-- # Difficulty : Easy

select sum(population)
from city
where district = 'CALIFORNIA'
;