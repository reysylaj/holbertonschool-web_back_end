-- Show initial data
SELECT * FROM users;
SELECT * FROM corrections;

-- Call the procedure to compute average scores
SELECT "--";
CALL ComputeAverageScoreForUser(1);
CALL ComputeAverageScoreForUser(2);
CALL ComputeAverageScoreForUser(3);
CALL ComputeAverageScoreForUser(4);

-- Show updated data
SELECT "--";
SELECT * FROM users;
