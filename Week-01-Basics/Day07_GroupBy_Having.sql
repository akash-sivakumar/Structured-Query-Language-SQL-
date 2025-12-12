USE day1_practice;                   # Select the database

SELECT * FROM students;              # View table


----------------------------
-- GROUP BY with HAVING (filter groups)
----------------------------

SELECT age, COUNT(*) AS total
FROM students
GROUP BY age
HAVING COUNT(*) > 1;                 # Show only age groups with more than 1 student


----------------------------
-- HAVING using alias
----------------------------

SELECT LEFT(name, 1) AS first_letter, COUNT(*) AS total
FROM students
GROUP BY first_letter
HAVING total > 1;                    # Filter groups where total > 1


----------------------------
-- HAVING with name length
----------------------------

SELECT LENGTH(name) AS name_length, COUNT(*) AS total
FROM students
GROUP BY name_length
HAVING total > 1;                    # Group by length & show only repeated lengths


----------------------------
-- HAVING for last letter groups
----------------------------

SELECT RIGHT(name, 1) AS last_letter, COUNT(*) AS total
FROM students
GROUP_BY last_letter
HAVING total = 1;                    # Only groups that appear once


----------------------------
-- HAVING with aggregates (AVG)
----------------------------

SELECT age, AVG(age) AS avg_age
FROM students
GROUP BY age
HAVING avg_age > 20;                 # Groups where average age > 20


----------------------------
-- GROUP BY + HAVING + ORDER BY
----------------------------

SELECT age, COUNT(*) AS total
FROM students
GROUP BY age
HAVING COUNT(*) >= 1
ORDER BY total DESC;                 # Age groups sorted by total count


----------------------------
-- Practical example: students with same first letter appearing more than once
----------------------------

SELECT LEFT(name, 1) AS first_letter, COUNT(*) AS total
FROM students
GROUP BY first_letter
HAVING COUNT(*) > 1;                 # First letter that appears more than once
