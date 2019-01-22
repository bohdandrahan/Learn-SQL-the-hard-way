--list all persons names that had dead pets and count how many dead pets they had;
select person.id, person.first_name, count(dead)
	from person, person_pet, pet
	where person.id = person_pet.person_id
	and pet.id = person_pet.pet_id 
	and pet.dead = 1 
	group by person.id, person.first_name;

--check the result, 2 dead pets are expected owned by dude named Comfort;
select pet.name, pet.breed, pet.dead, person.first_name 
	from pet, person, person_pet 
	where person.id = person_pet.person_id 
	and pet.id = person_pet.pet_id 
	and person.id = 70;