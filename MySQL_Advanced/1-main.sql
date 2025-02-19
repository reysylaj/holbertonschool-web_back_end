-- Show existing records in the users table
SELECT * FROM users;

-- Insert valid users with different country values
INSERT INTO users (email, name, country) VALUES ('bob@dylan.com', 'Bob', 'US');
INSERT INTO users (email, name, country) VALUES ('sylvie@dylan.com', 'Sylvie', 'CO');

-- Try to insert an invalid country (should fail)
INSERT INTO users (email, name, country) VALUES ('jean@dylan.com', 'Jean', 'FR'); -- Should fail because 'FR' is not in ENUM

-- Insert a user without specifying the country (should default to 'US')
INSERT INTO users (email, name) VALUES ('john@dylan.com', 'John');

-- Show records after insertion
SELECT * FROM users;
