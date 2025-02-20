DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    DECLARE avg_score FLOAT;

    -- Calculate average score for the given user_id
    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE user_id = user_id;

    -- Update user's average score in the users table
    UPDATE users 
    SET average_score = avg_score
    WHERE id = user_id;
END $$

DELIMITER ;