-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
-- # Difficulty : Easy

select avg(population)
from city
where district = 'CALIFORNIA'
;