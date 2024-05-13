-- https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true
-- Difficulty: Medium

DELIMITER $$

CREATE PROCEDURE Stars(r INT)  -- Create procedure with r as int variable
BEGIN                                             -- Begin the procedure
    DECLARE i INT DEFAULT 1;        -- Declaring i as int variable
    WHILE i<=r DO                           -- Start While loop, run when i<=r
    SELECT REPEAT('* ', i);                -- Print i number of stars
    SET i=i+1;                                   -- Increment value of i each iteration
    END WHILE;                                -- End While loop
END $$                                            -- End Procedure

    
CALL Stars(20);
