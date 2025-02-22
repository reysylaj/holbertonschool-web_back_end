DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id_param INT)
BEGIN
    DECLARE avg_score FLOAT;

    -- Calculate the average score for the given user_id
    SELECT COALESCE(AVG(score), 0) INTO avg_score
    FROM corrections
    WHERE user_id = user_id_param;

    -- Debugging: Check if avg_score is being calculated correctly
    SELECT avg_score AS debug_avg_score;

    -- Update the user's average_score in the users table
    UPDATE users 
    SET average_score = avg_score
    WHERE id = user_id_param;

    -- Debugging: Check if the update worked
    SELECT * FROM users WHERE id = user_id_param;
END $$

DELIMITER ;
