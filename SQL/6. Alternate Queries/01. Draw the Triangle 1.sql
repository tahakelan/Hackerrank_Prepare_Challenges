-- Solution 1
set @r:= 21;
select repeat('* ', @r:= @r-1)
from information_schema.tables;


-- Solution 2
-- Using delimiter & procedure
-- For an R amount of rows (with an input) print the descending amount of stars. 

DELIMITER $$

CREATE PROCEDURE Stars(r INT) -- Creating a procedure Stars with int variable as parameter
    BEGIN -- Start the procedure
        WHILE r>=1 DO -- Do while loop
            SELECT REPEAT('* ',r) ; -- repeat * n number of times
            SET r=r-1 ; -- Reduce r by 1 each iteration
        END WHILE ; -- End while loop
    END; $$ -- End the procedure
    
CALL Stars(20);
