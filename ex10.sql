SELECT * FROM pet;

UPDATE pet SET name = "John's pet" WHERE id IN (
	SELECT pet.id
	FROM pet, person_pet, person
	WHERE
	person.id = person_pet.person_id AND
	pet.id = person_pet.pet_id AND
	person.first_name = 'John'
);

SELECT * FROM pet;

-- Study drills

UPDATE pet SET name = "John's oldest pet" WHERE id IN (
	SELECT pet.id
	FROM pet, person_pet, person
	WHERE
	person.id = person_pet.person_id AND
	pet.id = person_pet.pet_id AND
	person.first_name = 'John'
	AND pet.age = (SELECT MAX(age) FROM pet)
	);

SELECT * FROM pet;
