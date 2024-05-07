-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- # Difficulty : Easy

select
city.name
from city
inner join country on city.countrycode = country.code
where country.continent = 'Africa'
;