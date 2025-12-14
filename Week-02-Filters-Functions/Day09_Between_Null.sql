USE week1_practice;                                  # Select database

SELECT * FROM students;                             # View all records

----------------------------
-- BETWEEN
----------------------------

SELECT * FROM students
WHERE age BETWEEN 19 AND 22;                        # Age 19 to 22 inclusive

SELECT * FROM students
WHERE age NOT BETWEEN 19 AND 22;                    # Outside range

----------------------------
-- IS NULL / IS NOT NULL
----------------------------

SELECT * FROM students
WHERE age IS NULL;                                 # Missing age

SELECT * FROM students
WHERE age IS NOT NULL;                             # Age exists

----------------------------
-- Combined conditions
----------------------------

SELECT * FROM students
WHERE age BETWEEN 19 AND 22
AND age != 20;                                     # Exclude 20

SELECT * FROM students
WHERE name LIKE 'A%'
AND age BETWEEN 19 AND 22;                          # Name starts with A
