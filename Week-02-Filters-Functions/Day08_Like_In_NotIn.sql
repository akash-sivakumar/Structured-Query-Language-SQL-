USE week1_practice;                                     # Select database

SELECT * FROM students;                                 # View all records


----------------------------
-- LIKE + Wildcards
----------------------------

SELECT * FROM students
WHERE name LIKE 'A%';                                   # Names starting with 'A'

SELECT * FROM students
WHERE name LIKE '%A';                                   # Names ending with 'A'

SELECT * FROM students
WHERE name LIKE '%HA%';                                 # Names containing 'HA'

SELECT * FROM students
WHERE name LIKE '_E%';                                  # Second letter is 'E'

SELECT * FROM students
WHERE name LIKE '%N%';                                  # Names containing letter 'N'


----------------------------
-- IN / NOT IN
----------------------------

SELECT * FROM students
WHERE age IN (19, 20);                                  # Age is either 19 or 20

SELECT * FROM students
WHERE age NOT IN (20, 22);                              # Age is not 20 or 22


----------------------------
-- LIKE + AND
----------------------------

SELECT * FROM students
WHERE name LIKE 'A%' AND age >= 20;                      #Name starts with A AND age >= 20


----------------------------
-- LIKE + OR
----------------------------

SELECT * FROM students
WHERE name LIKE 'A%' OR name LIKE 'I%';                 # Name starts with A OR I


----------------------------
-- Practical filters
----------------------------

SELECT * FROM students
WHERE name LIKE '% %';                                  # Names containing space (full names)

SELECT * FROM students
WHERE name LIKE '%LL%';                                 # Names containing 'LL'
