USE day1_practice;           # Select the database

SELECT * FROM students;      # View table


----------------------------
-- Insert more sample data for grouping
----------------------------

INSERT INTO students VALUES
(4, 'Arun', 20),             # Extra student (age 20)
(5, 'Kavi', 22),             # Extra student (age 22)
(6, 'Meena', 19);            # Extra student (age 19)


----------------------------
-- Basic GROUP BY
----------------------------

SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age;                # Count how many students in each age group


----------------------------
-- GROUP BY using name length
----------------------------

SELECT LENGTH(name) AS name_length, COUNT(*) AS total
FROM students
GROUP BY name_length;        # Group by length of the name


----------------------------
-- GROUP BY using first letter of name
----------------------------

SELECT LEFT(name, 1) AS first_letter, COUNT(*) AS total
FROM students
GROUP BY first_letter;       # Group names by starting letter


----------------------------
-- GROUP BY using last letter
----------------------------

SELECT RIGHT(name, 1) AS last_letter, COUNT(*) AS total
FROM students
GROUP_BY last_letter;        # Group names by ending letter


----------------------------
-- GROUP BY with ORDER BY
----------------------------

SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age
ORDER BY total_students DESC; # Show age groups with highest count first
