-- Normal join with equality
SElECT pet.id, pet.name, pet.age, pet.dead
	FROM pet, person_pet, person
	WHERE
	pet.id = person_pet.pet_id AND
	person_pet.person_id = person.id AND
	person.first_name = 'John';

--Using a sub-select
SELECT pet.id, pet.name, pet.age, pet.dead
	FROM pet
	WHERE pet.id IN
	(
		SELECT pet_id FROM person_pet, person
		WHERE person_pet.person_id = person.id
		AND person.first_name = 'John')
	);
/* Study drills
	Python type class and objects relations

CREATE TABLE class (
	id INTEGER PRIMARY KEY,
	name TEXT,
	);

CREATE TABLE object (
	id INTEGER PRIMARY KEY,
	name TEXT,
	)

CREATE TABLE class_object(
	class_id INTEGER,
	object_id INTEGER)

-- As an idea, why not to describe inheritance of classes
--as a new table:

CREATE TABLE class_inheritanse (
	parrent_class_id INTEGER,
	child_class_id INTEGER	)
 */
