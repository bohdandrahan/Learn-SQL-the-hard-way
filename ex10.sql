SELECT * FROM pet;

UPDATE pet Set name = "John's pet" WHERE id IN (
	SELECT pet.id
	FROM pet, person_pet, person
	WHERE
	person.id = person_pet.person_id AND
	pet.id = person_pet.pet_id AND
	person.first_name = 'John'
);

SELECT * FROM pet;