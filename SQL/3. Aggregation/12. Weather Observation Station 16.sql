-- https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
-- # Difficulty : Easy

select round(LAT_N,4)
from STATION
where LAT_N>38.7780
order by LAT_N 
limit 1
;