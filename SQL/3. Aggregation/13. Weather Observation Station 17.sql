-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
-- # Difficulty : Easy

select round(LONG_W,4)
from STATION
where LAT_N>38.7780
order by LAT_N 
limit 1
;