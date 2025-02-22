-- Show initial data
USE amitdb;

SELECT * FROM users;
SELECT * FROM corrections;

-- Call the procedure to compute average score for Jeanne
SELECT "--";
SET @jeanne_id = (SELECT id FROM users WHERE name = 'Jeanne');
CALL ComputeAverageScoreForUser(@jeanne_id);

-- Show updated data
SELECT "--";
SELECT * FROM users;
