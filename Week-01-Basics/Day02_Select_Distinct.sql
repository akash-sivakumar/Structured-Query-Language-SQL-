-- Use the database
USE day1_practice;

 
SELECT * FROM students; # View all data from the table


SELECT name FROM students; # Select only name column


SELECT id, age FROM students; # Select id and age


SELECT DISTINCT age FROM students; # DISTINCT: show unique ages


SELECT DISTINCT name FROM students; # DISTINCT: show unique names


SELECT * FROM students # Simple WHERE conditions
  WHERE age = 20;      # Students aged 20
 

SELECT * FROM students # Students aged greater than 20
WHERE age > 20;

SELECT * FROM students # Students aged less than 22
WHERE age < 22;

SELECT * FROM students # Students whose name is 'Akash'
WHERE name = 'Akash';


SELECT * FROM students # Students not aged 20
WHERE age != 20;
