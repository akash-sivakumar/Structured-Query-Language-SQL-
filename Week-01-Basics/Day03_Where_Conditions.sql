USE day1_practice; # Use the database

SELECT * FROM students; #View table data

SELECT * FROM students # Students aged 20
WHERE age = 20;


SELECT * FROM students # Students aged greater than 20
WHERE age > 20;

SELECT * FROM students #Students aged less than 22
WHERE age < 22;

SELECT * FROM students  #Students aged greater than or equal to 20
WHERE age >= 20;

SELECT * FROM students #Students aged less than or equal to 19
WHERE age <= 19;

SELECT * FROM students  # Students whose age is not equal to 20
WHERE age != 20;

SELECT * FROM students  # Students whose name is 'Akash'
WHERE name = 'Akash';

SELECT * FROM students  # Students whose name is not 'Sita'
WHERE name != 'Sita';

SELECT * FROM students  # Students with id greater than 1
WHERE id > 1;

SELECT * FROM students  # Students with id less than or equal to 2
WHERE id <= 2;
