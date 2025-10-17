CREATE TABLE cpp (

	name VARCHAR(200),
	ID_number INTEGER,
	member_type VARCHAR(200)

);

/* insert a row into table */
	INSERT INTO cpp (name, ID_number, member_type)
	VALUES ('Pikachu', 123456789, 'void');


/* show the data output*/
	SELECT *
	FROM cpp;


/* update a row */
	UPDATE cpp
	set ID_number = 1000000000
	WHERE name = 'Bruce Wayne'; 


/* delete a row or delete entire table */
	DELETE FROM cpp
	WHERE name = 'Bruce Wayne';