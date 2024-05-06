-- https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
-- # Difficulty : Easy

select round(LAT_N,4)
from STATION
where LAT_N < 137.2345
order by LAT_N desc
limit 1
;