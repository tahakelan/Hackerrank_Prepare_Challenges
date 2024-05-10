-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- # Difficulty : Easy

select
  country.continent
  , floor(avg(city.population)) as Average_City_Population
from city
inner join country on city.countrycode = country.code
group by country.continent
;
