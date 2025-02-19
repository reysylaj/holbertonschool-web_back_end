-- Show initial users and corrections
SELECT * FROM users;
SELECT * FROM corrections;

SELECT "--";

-- Compute average score for Jeanne
CALL ComputeAverageScoreForUser((SELECT id FROM users WHERE name = "Jeanne"));

SELECT "--";

-- Show users table after updating average score
SELECT * FROM users;
