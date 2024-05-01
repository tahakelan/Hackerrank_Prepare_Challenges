-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
-- # Difficulty : Easy

SELECT
IF(A+B>C AND B+C>A AND C+A>B, IF(A=B AND B=C,'Equilateral',IF(A=B OR B=C OR C=A,'Isosceles','Scalene')),'Not A Triangle')
from TRIANGLES
;