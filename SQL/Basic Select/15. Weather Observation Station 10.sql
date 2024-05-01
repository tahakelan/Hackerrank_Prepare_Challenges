-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
-- # Difficulty : Easy

SELECT DISTINCT CITY
FROM STATION 
WHERE REGEXP_LIKE(CITY, '[^AEIOU]$')
;


