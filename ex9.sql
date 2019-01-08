SELECT * FROM person;
SELECT * FROM pet;

UPDATE person SET first_name = 'Zed is not hilarious'
	WHERE first_name = 'John';

UPDATE pet SET name = 'Lulula'
	WHERE id = 0;

SELECT * FROM person;
SELECT * FROM pet;

/* STUDY DRILLS 
sqlite> UPDATE person set first_name = 'John' WHERE id = 0
   ...> ;
sqlite> SELECT * FROM person
   ...> ;
0|John|Smith|20
sqlite> .quit
Bohdans-MacBook-Pro:learnSQL bohdandrahan$ sqlite3 mydata.db 
SQLite version 3.24.0 2018-06-04 14:10:15
Enter ".help" for usage hints.
sqlite> INSERT INTO pet VALUES(2, 'Dead cad', 'cat', '10', 1);
sqlite> SELECT * FROM pet
   ...> ;
0|Lulula|cat|5|0
1|RUMBA|Robot|1|0
2|Dead cad|cat|10|1
sqlite> UPDATE pet SET name = 'Dead cat' WHERE name = 'Dead cad'
   ...> ;
sqlite> SELECT * FROM pet
   ...> ;
0|Lulula|cat|5|0
1|RUMBA|Robot|1|0
2|Dead cat|cat|10|1
sqlite> UPDATE pet name = 'DEADED' WHERE dead = 1;
Error: near "name": syntax error
sqlite> UPDATE pet set name = 'DEADED' WHERE dead = 1;
sqlite> SELECT * FROM pet
   ...> ;
0|Lulula|cat|5|0
1|RUMBA|Robot|1|0
2|DEADED|cat|10|1
*/