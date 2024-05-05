-- https://www.hackerrank.com/challenges/population-density-difference/problem
-- # Difficulty : Easy

select max(population) - min(population)
from city
;