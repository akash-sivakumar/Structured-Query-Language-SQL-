USE week1_practice;                               -- Select database

SELECT NOW();                                     -- Current date & time
SELECT CURDATE();                                 -- Current date

--Add date column

ALTER TABLE students
ADD COLUMN created_at DATE;                       -- Add date column

-- Insert sample dates

UPDATE students SET created_at = '2023-06-15' WHERE id = 1;
UPDATE students SET created_at = '2023-08-10' WHERE id = 2;
UPDATE students SET created_at = '2024-01-05' WHERE id = 3;
UPDATE students SET created_at = '2024-03-20' WHERE id = 4;
UPDATE students SET created_at = '2024-06-11' WHERE id = 5;
UPDATE students SET created_at = '2025-01-01' WHERE id = 6;
UPDATE students SET created_at = CURDATE() WHERE id = 7;

-- Extract date parts

SELECT name, YEAR(created_at) AS year_joined
FROM students;                                   -- Extract year

SELECT name, MONTH(created_at) AS month_joined
FROM students;                                  -- Extract month

SELECT name, DAY(created_at) AS day_joined
FROM students;                                  -- Extract day

-- Date filtering


SELECT * FROM students
WHERE YEAR(created_at) = 2024;                   -- Joined in 2024

SELECT * FROM students
WHERE MONTH(created_at) = 1;                     -- Joined in January

SELECT * FROM students
WHERE created_at = CURDATE();                    -- Joined today
