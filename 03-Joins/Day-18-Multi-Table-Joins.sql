USE sql_master;                                    -- Select database


-- View base tables

SELECT * FROM students;                            -- Students table
SELECT * FROM courses;                             -- Courses table
SELECT * FROM departments;                         -- Departments table


-- 1. INNER JOIN (3 Tables)
-- Show student name, course name, department name

SELECT 
    s.student_name,
    c.course_name,
    d.dept_name
FROM students s
JOIN courses c
    ON s.student_id = c.student_id
JOIN departments d
    ON c.course_id = d.course_id;
-- Only matching records from all 3 tables



-- 2. LEFT JOIN (3 Tables)
-- Show ALL students even if course/department missing

SELECT 
    s.student_name,
    c.course_name,
    d.dept_name
FROM students s
LEFT JOIN courses c
    ON s.student_id = c.student_id
LEFT JOIN departments d
    ON c.course_id = d.course_id;
-- Students without course or department will show NULL


-- 3. Students WITHOUT courses

SELECT 
    s.student_name
FROM students s
LEFT JOIN courses c
    ON s.student_id = c.student_id
WHERE c.student_id IS NULL;
-- Finds students who are not enrolled in any course


-- 4. Courses WITHOUT departments

SELECT 
    c.course_name
FROM courses c
LEFT JOIN departments d
    ON c.course_id = d.course_id
WHERE d.course_id IS NULL;
-- Finds courses not assigned to any department


-- 5. Filter: Students in 'DATA' department

SELECT 
    s.student_name,
    c.course_name,
    d.dept_name
FROM students s
JOIN courses c
    ON s.student_id = c.student_id
JOIN departments d
    ON c.course_id = d.course_id
WHERE d.dept_name = 'DATA';


-- 6. ORDER BY with multi-table join

SELECT 
    s.student_name,
    c.course_name,
    d.dept_name
FROM students s
JOIN courses c
    ON s.student_id = c.student_id
JOIN departments d
    ON c.course_id = d.course_id
ORDER BY s.student_name;
