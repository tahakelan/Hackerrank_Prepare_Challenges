-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
-- # Difficulty : Easy

SELECT DISTINCT CITY
FROM STATION 
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%'
;

SELECT DISTINCT CITY
FROM STATION 
WHERE CITY REGEXP '^[AEIOU]'
;

