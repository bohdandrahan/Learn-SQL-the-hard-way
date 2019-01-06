SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != 'Zed';

-- Study Drills

SELECT name, age FROM pet WHERE age > 1;

SELECT * FROM person WHERE age < 25;

SELECT * FROM person WHERE age >= 25;

SELECT * FROM pet WHERE age = 1 AND dead = 1;