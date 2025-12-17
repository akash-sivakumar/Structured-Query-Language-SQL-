USE week1_practice;                                   -- Select database

-- Create courses table

CREATE TABLE courses (
    course_id INT,
    student_id INT,
    course_name VARCHAR(50)
);

-- Insert data

INSERT INTO courses (course_id, student_id, course_name) VALUES
(101, 1, 'SQL'),
(102, 2, 'Python'),
(103, 3, 'Power BI'),
(104, 1, 'Excel'),
(105, 4, 'Statistics'),
(106, 6, 'Machine Learning');

-- INNER JOIN examples

SELECT s.name, c.course_name
FROM students s
INNER JOIN courses c
ON s.id = c.student_id;                               -- Basic inner join

SELECT s.id, s.name, s.age, c.course_name
FROM students s
INNER JOIN courses c
ON s.id = c.student_id;                               -- Multiple columns

SELECT s.name, c.course_name
FROM students s
INNER JOIN courses c
ON s.id = c.student_id
WHERE c.course_name = 'SQL';                          -- Join + filter

SELECT s.name, c.course_name
FROM students s
INNER JOIN courses c
ON s.id = c.student_id
ORDER BY s.name;                                      -- Join + sort
