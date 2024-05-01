-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
-- # Difficulty : Easy

SELECT DISTINCT CITY
FROM STATION 
WHERE ID%2 = 0
;

SELECT DISTINCT CITY 
FROM STATION
WHERE MOD(ID,2) = 0; 
