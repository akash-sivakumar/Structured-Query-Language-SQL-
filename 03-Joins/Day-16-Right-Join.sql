-- Use the database
USE sql_master;                                   -- Select database


-- View students table

SELECT * FROM students;                           -- Show all students


-- View courses table

SELECT * FROM courses;                            -- Show all courses


-- INNER JOIN (for comparison)

SELECT s.student_name, c.course_name
FROM students s
INNER JOIN courses c
ON s.student_id = c.student_id;                   -- Only matching records


-- RIGHT JOIN (Main Topic)

SELECT s.student_name, c.course_name
FROM students s
RIGHT JOIN courses c
ON s.student_id = c.student_id;                   -- All courses + matching students


-- RIGHT JOIN with more columns

SELECT s.student_id,
       s.student_name,
       s.student_age,
       c.course_name
FROM students s
RIGHT JOIN courses c
ON s.student_id = c.student_id;                   -- Shows NULL if student missing


-- Find courses without students

SELECT s.student_name, c.course_name
FROM students s
RIGHT JOIN courses c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;                       -- Courses not assigned to any student


-- RIGHT JOIN + WHERE condition

SELECT s.student_name, c.course_name
FROM students s
RIGHT JOIN courses c
ON s.student_id = c.student_id
WHERE c.course_name LIKE 'J%';                    -- Courses starting with J


