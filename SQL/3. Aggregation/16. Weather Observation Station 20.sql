-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
-- # Difficulty : Medium

SET @rowindex := -1;

WITH i AS (
    SELECT @rowindex := @rowindex + 1 AS row_no, LAT_N
    FROM STATION
    ORDER BY LAT_N
)

SELECT ROUND(AVG(i.LAT_N),4) AS Median_Northern_Latitudes
FROM i
WHERE i.row_no IN (FLOOR(@rowindex/2),CEIL(@rowindex/2));