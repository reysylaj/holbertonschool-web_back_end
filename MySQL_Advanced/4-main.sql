-- Show initial state of items and orders
SELECT * FROM items;
SELECT * FROM orders;

-- Insert orders
INSERT INTO orders (item_name, number) VALUES ('apple', 1);
INSERT INTO orders (item_name, number) VALUES ('apple', 3);
INSERT INTO orders (item_name, number) VALUES ('pear', 2);

-- Separator
SELECT "--";

-- Show the final state of items and orders after trigger execution
SELECT * FROM items;
SELECT * FROM orders;
