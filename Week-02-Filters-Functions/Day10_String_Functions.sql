USE week1_practice;                                  # Select database

SELECT * FROM students;                              # View all records

----------------------------
-- UPPER & LOWER
----------------------------

SELECT UPPER(name) AS name_upper
FROM students;                                       # Convert names to uppercase

SELECT LOWER(name) AS name_lower
FROM students;                                       # Convert names to lowercase

----------------------------
-- Case-insensitive filtering
----------------------------

SELECT * FROM students
WHERE UPPER(name) LIKE 'A%';                         # Names starting with A (any case)

----------------------------
-- LENGTH
----------------------------

SELECT name, LENGTH(name) AS name_length
FROM students;                                       # Count characters in name

----------------------------
-- Filter using LENGTH
----------------------------

SELECT * FROM students
WHERE LENGTH(name) > 5;                              # Names longer than 5 characters

----------------------------
-- Combine string functions
----------------------------

SELECT UPPER(name) AS name_upper,
       LENGTH(name) AS name_length
FROM students;                                       # Uppercase + length

----------------------------
-- Practical examples
----------------------------

SELECT * FROM students
WHERE name LIKE '% %';                               # Names with space (full names)

SELECT * FROM students
WHERE LOWER(name) = 'aashish';                       # Case-insensitive match
