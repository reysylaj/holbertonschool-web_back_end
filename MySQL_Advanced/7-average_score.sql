--use db
USE amitdb;

DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id_param INT)
BEGIN
    DECLARE avg_score FLOAT;

    -- Calculate average score for the given user_id
    SELECT COALESCE(AVG(score), 0) INTO avg_score
    FROM corrections
    WHERE user_id = user_id_param;

    -- Update user's average score in the users table
    UPDATE users 
    SET average_score = avg_score
    WHERE id = user_id_param;
END $$

DELIMITER ;
