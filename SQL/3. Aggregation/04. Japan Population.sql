-- https://www.hackerrank.com/challenges/japan-population/problem
-- # Difficulty : Easy

select sum(population)
from city
where countrycode = 'JPN'
;