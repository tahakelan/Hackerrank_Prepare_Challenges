-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- # Difficulty : Medium

select round((MAX(LAT_N)-MIN(LAT_N)) + (MAX(LONG_W)-MIN(LONG_W)),4)
from STATION
;