USE day1_practice;   -- Select the database

SELECT * FROM students;   -- View full table


----------------------------
-- AND Operator
----------------------------

SELECT * FROM students WHERE age = 20 AND name = 'Akash';                # age = 20 AND name = Akash
SELECT * FROM students WHERE age > 19 AND age < 22;                      # age between 20 and 21
SELECT * FROM students WHERE id > 1 AND age >= 20;                       # id greater than 1 AND age >= 20


----------------------------
-- OR Operator
----------------------------

SELECT * FROM students WHERE age = 19 OR age = 22;                       # age is 19 OR 22
SELECT * FROM students WHERE name = 'Akash' OR name = 'Rahul';           #name is Akash OR Rahul
SELECT * FROM students WHERE age < 20 OR age > 21;                       # age less than 20 OR greater than 21


----------------------------
-- NOT Operator
----------------------------

SELECT * FROM students WHERE NOT age = 20;                               # NOT equal to 20
SELECT * FROM students WHERE NOT name = 'Sita';                          # NOT name Sita
SELECT * FROM students WHERE NOT age > 21;                               # NOT older than 21


----------------------------
-- Combined AND + OR
----------------------------

SELECT * FROM students 
WHERE (age = 20 OR age = 22) AND name LIKE 'A%';                         # age is 20/22 AND name starts with A

SELECT * FROM students 
WHERE age > 19 AND (name = 'Akash' OR name = 'Sita');                    # age > 19 AND name Akash/Sita
