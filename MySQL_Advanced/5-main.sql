-- Show initial users
SELECT * FROM users;

-- Update valid_email (should not trigger the reset)
UPDATE users SET valid_email = 1 WHERE email = "bob@dylan.com";

-- Change email for Sylvie (valid_email should reset to 0)
UPDATE users SET email = "sylvie+new@dylan.com" WHERE email = "sylvie@dylan.com";

-- Change only the name for Jeanne (valid_email should remain unchanged)
UPDATE users SET name = "Jannis" WHERE email = "jeanne@dylan.com";

-- Separator
SELECT "--";

-- Show the updated users table
SELECT * FROM users;

-- Attempt updating Bob’s email to the same value (valid_email should not reset)
UPDATE users SET email = "bob@dylan.com" WHERE email = "bob@dylan.com";

-- Separator
SELECT "--";

-- Show final state of users table
SELECT * FROM users;
