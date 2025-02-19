-- Insert sample projects
INSERT INTO projects (name) VALUES
('Python is cool'),
('AI and Machine Learning'),
('Data Science for All');

-- Insert sample users
INSERT INTO users (name) VALUES
('John Doe'),
('Jane Smith'),
('Alice Johnson');

-- Insert sample corrections (if they are not already inserted)
INSERT INTO corrections (user_id, project_id, score) VALUES
(1, 1, 100),
(2, 2, 150);