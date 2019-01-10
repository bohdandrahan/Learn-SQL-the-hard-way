SELECT * FROM person;

INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, 'Zero', 'sub zero', 0);

INSERT OR REPLACE INTO person VALUES (0, 'Zero', 'sub zero', 0);

SELECT * FROM person;

REPLACE INTO person VALUES (0, 'John', 'Smith', 16);

SELECT * FROM person;





