-- Show initial data
SELECT * FROM users;
SELECT * FROM corrections;

-- Call the procedure to compute average score for Jeanne
SELECT "--";
CALL ComputeAverageScoreForUser((SELECT id FROM users WHERE name = 'Jeanne'));

-- Show updated data
SELECT "--";
SELECT * FROM users;