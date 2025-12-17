USE sql_master;

-- FULL OUTER JOIN (MySQL simulation)

SELECT s.student_id, s.student_name, c.course_name
FROM students s
LEFT JOIN courses c
ON s.student_id = c.student_id

UNION

SELECT s.student_id, s.student_name, c.course_name
FROM students s
RIGHT JOIN courses c
ON s.student_id = c.student_id;


-- SELF JOIN : Students with same age

SELECT 
    s1.student_name AS student_1,
    s2.student_name AS student_2,
    s1.student_age
FROM students s1
JOIN students s2
ON s1.student_age = s2.student_age
AND s1.student_id < s2.student_id;


-- SELF JOIN : Older vs Younger students

SELECT 
    s1.student_name AS older_student,
    s2.student_name AS younger_student
FROM students s1
JOIN students s2
ON s1.student_age > s2.student_age;
