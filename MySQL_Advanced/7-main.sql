-- Show users and corrections
SELECT * FROM users;
SELECT * FROM corrections;

-- Show separator
SELECT "--";

-- Call the stored procedure for Jeanne
CALL ComputeAverageScoreForUser((SELECT id FROM users WHERE name = "Jeanne"));

-- Show updated users table with average score
SELECT "--";
SELECT * FROM users;