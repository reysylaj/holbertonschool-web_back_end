-- Create an index on the first character of 'name' and 'score'
CREATE INDEX idx_name_first_score ON names (name(1), score);
