CREATE DATABASE Base_de_Datos;

USE Base_de_Datos;

CREATE TABLE letras_A
(
	letras varchar(1) primary key not null,
);

CREATE TABLE letras_B
(
	letras2 varchar(1) primary key not null,
	--letras varchar(1) not null,

	--FOREIGN KEY (letras) REFERENCES letras_A(letras)
);

INSERT INTO letras_A(letras) 
	VALUES('D');
INSERT INTO letras_A(letras) 
	VALUES('E');
INSERT INTO letras_A(letras) 
	VALUES('F');
INSERT INTO letras_A(letras) 
	VALUES('G');
INSERT INTO letras_A(letras) 
	VALUES('H');

INSERT INTO letras_B(letras2) 
	VALUES('A');
INSERT INTO letras_B(letras2) 
	VALUES('B');
INSERT INTO letras_B(letras2) 
	VALUES('E');
INSERT INTO letras_B(letras2) 
	VALUES('H');



SELECT lA.letras
FROM letras_A AS LA INNER JOIN letras_B AS LB ON	LA.letras = LB.letras2; 	
