DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id_param INT)
BEGIN
    DECLARE avg_score FLOAT;

    -- Calculate the average score for the given user_id
    SELECT COALESCE(AVG(score), 0) INTO avg_score
    FROM corrections
    WHERE user_id = user_id_param;

    -- Debugging: Print the calculated average
    SELECT user_id_param AS "User ID", avg_score AS "Calculated Average";

    -- Update user's average_score in the users table
    UPDATE users 
    SET average_score = avg_score
    WHERE id = user_id_param;

    -- Debugging: Check if the update worked
    SELECT * FROM users WHERE id = user_id_param;
END $$

DELIMITER ;
