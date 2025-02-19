DELIMITER $$

-- Modified procedure with better error handling
CREATE PROCEDURE AddBonusTest(IN user_id INT, IN project_name VARCHAR(255), IN bonus INT)
BEGIN
    DECLARE project_id INT;

    -- Ensure the project exists
    SELECT id INTO project_id FROM projects WHERE name = project_name LIMIT 1;
    
    -- If project does not exist, signal an error
    IF project_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Project not found: ' + project_name;
    END IF;

    -- Ensure user exists before applying bonus
    IF NOT EXISTS (SELECT 1 FROM users WHERE id = user_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User ID not found: ' + CAST(user_id AS CHAR);
    END IF;

    -- Insert or update the score in the corrections table
    INSERT INTO corrections (user_id, project_id, score)
    VALUES (user_id, project_id, bonus)
    ON DUPLICATE KEY UPDATE score = score + bonus;

END$$

DELIMITER 