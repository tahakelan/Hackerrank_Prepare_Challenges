-- https://www.hackerrank.com/challenges/the-pads/problem
-- # Difficulty : Medium

SELECT CONCAT(Name,'(',SUBSTR(Occupation,1,1),')')
FROM OCCUPATIONS
ORDER BY Name
;

SELECT CONCAT('There are a total of',' ',(COUNT(*)),' ',lower(occupation),'s.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*)
;

 
	