-- Create the SafeDiv function
DELIMITER $$

CREATE FUNCTION SafeDiv(a INT, b INT) 
RETURNS FLOAT
DETERMINISTIC
BEGIN
    IF b = 0 THEN
        RETURN 0;
    ELSE
        RETURN a / b;
    END IF;
END $$

DELIMITER ;

-- Query using SafeDiv function
SELECT SafeDiv(a, b) FROM numbers;