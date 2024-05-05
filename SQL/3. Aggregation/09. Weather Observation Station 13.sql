-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem
-- # Difficulty : Easy

select round(sum(lat_n),4) as sum_of_lat_n
from station
where lat_n between 38.7880 and 137.2345
;