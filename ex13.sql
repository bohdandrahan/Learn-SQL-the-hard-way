ALTER TABLE person ADD COLUMN dead INT;
ALTER TABLE person ADD COLUMN phone_number INTEGER;
ALTER TABLE person ADD COLUMN salary NUMERIC;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE person_pet ADD COLUMN adopted_on DATETIME;
ALTER TABLE pet ADD COLUMN parent INT;

UPDATE person SET dead = 0, phone_number = 1234567890, salary = 1000000, dob = DATETIME('now', '-20 years')
	WHERE person.id = 0;

UPDATE pet SET dob = DATETIME('now', '-5 years')
	WHERE pet.id = 0;

UPDATE pet SET dob = DATETIME('now', '-1 year')
	WHERE pet.id = 1;

INSERT INTO person VALUES(1, 'James', 'Bond', 30, 0, 1234567899, 100, DATETIME('now','-30 years'));
INSERT INTO person VALUES(2, 'Donald', 'Trump', 100, 0, 1234567800, 100000, DATETIME('now','-100 years'));
INSERT INTO person VALUES(3, 'Marilyn ', 'Monroe', 36, 1, 1234567800, 100000, DATETIME('now'));
INSERT INTO person VALUES(4, 'Me', 'Myself', 25, 0, 1234567000, 10, DATETIME('now','-25 years'));

INSERT INTO pet VALUES(2, 'Son of Fluffy', 'cat', 2, 0, DATETIME('now', '-2 years'), 0);
INSERT INTO pet VALUES(3, 'MiniRUMBA', 'Robot', 1, 0, DATETIME('now', '-1 years'), 1);
INSERT INTO pet (id, name, breed, dead) VALUES(4, 'Rex', 'dog', 0);
INSERT INTO pet (id, name,breed, dead) VALUES(5, 'Rock', 'rock', 1);

INSERT INTO	person_pet VALUES (0, 2, DATETIME('now', '-20 years'));
INSERT INTO person_pet VALUES (0, 3, DATETIME('now', '-1 years'));
INSERT INTO person_pet VALUES (2, 4, DATETIME('now', '-1 months'));
INSERT INTO person_pet VALUES (4, 5, DATETIME('2016-01-01 12:00:00'));

SELECT pet.name, person.first_name, person_pet.adopted_on FROM pet, person, person_pet
	WHERE person_pet.adopted_on IN
	(SELECT adopted_on FROM person_pet
		WHERE adopted_on < DATETIME('2015-01-01 12:00:00')) AND
	pet.id = person_pet.pet_id AND
	person.id = person_pet.person_id;

SELECT * FROM person_pet