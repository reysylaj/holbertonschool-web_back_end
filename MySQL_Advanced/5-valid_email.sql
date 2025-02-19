-- Create a trigger that resets valid_email to 0 when the email is changed
DELIMITER $$

CREATE TRIGGER reset_valid_email_on_update
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email is actually being changed
    IF OLD.email <> NEW.email THEN
        SET NEW.valid_email = 0;
    END IF;
END $$

DELIMITER ;
