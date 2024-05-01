-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- # Difficulty : Easy

SELECT CITY, LENGTH(CITY) AS CITY_NAME_LENGTH
FROM STATION 
ORDER BY CITY_NAME_LENGTH, CITY
LIMIT 1 ;

SELECT CITY, LENGTH(CITY) AS CITY_NAME_LENGTH
FROM STATION 
ORDER BY CITY_NAME_LENGTH DESC, CITY
LIMIT 1 ;

