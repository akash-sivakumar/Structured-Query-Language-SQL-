USE day1_practice;      # Select the database

SELECT * FROM students; # View table


----------------------------
-- ORDER BY (Ascending)
----------------------------

SELECT * FROM students 
ORDER BY age ASC;        # Sort by age from smallest to largest

SELECT * FROM students 
ORDER BY name ASC;       # Sort names alphabetically (A → Z)


----------------------------
-- ORDER BY (Descending)
----------------------------

SELECT * FROM students 
ORDER BY age DESC;       # Sort by age from largest to smallest

SELECT * FROM students 
ORDER BY name DESC;      # Sort names reverse alphabetical (Z → A)


----------------------------
-- LIMIT
----------------------------

SELECT * FROM students
ORDER BY age ASC
LIMIT 1;                 # Youngest student (Top 1 lowest age)

SELECT * FROM students
ORDER BY age DESC
LIMIT 1;                 # Oldest student (Top 1 highest age)

SELECT * FROM students
ORDER BY age DESC
LIMIT 2;                 # Top 2 oldest students


----------------------------
-- Combined ORDER BY + WHERE
----------------------------

SELECT * FROM students
WHERE age > 19
ORDER BY age ASC;        # Filter age > 19, then sort ascending

SELECT * FROM students
WHERE age >= 20
ORDER BY name DESC;      # Filter age >= 20, then sort names Z → A
