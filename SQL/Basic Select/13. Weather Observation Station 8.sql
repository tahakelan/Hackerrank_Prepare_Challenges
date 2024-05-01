-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
-- # Difficulty : Easy

SELECT DISTINCT CITY
FROM STATION 
WHERE CITY REGEXP '^[AEIOU].*[AEIOU]$'
;



