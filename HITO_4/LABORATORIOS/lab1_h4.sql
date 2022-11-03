
CREATE DATABASE hito_4_funciones;
USE hito_4_funciones;

--FUNCIONES DE AGREGACION:
--simepre se ejecuta en la clausula SELECT
--unicamente retorna un unico valor(una fila)
--es aplicado a un grupo de registros(a un campo de una tabla)

CREATE TABLE ESTUDIANTES
(
	id_est INTEGER IDENTITY PRIMARY KEY NOT NULL,
	nombres VARCHAR(25) NOT NULL,
	apellidos VARCHAR(30) NOT NULL,
	edad INTEGER NOT NULL,
	fono INTEGER NOT NULL,
	email VARCHAR(100) NOT NULL,
	direccion VARCHAR(200) NOT NULL,
	genero VARCHAR(50) NOT NULL,
	lic_conducir BIT NOT NULL,
	id_esc INTEGER NOT NULL,

	FOREIGN KEY (id_esc) REFERENCES ESCUELA(id_esc)
);

DROP TABLE ESTUDIANTES

INSERT INTO ESTUDIANTES (nombres, apellidos, edad, fono, email, direccion, genero, id_esc,lic_conducir) VALUES
	('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino',1,0),
	('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino',2,0),
	('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino',2,0),
	('Andrea' ,'Arias Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino',1,0),
	('Santos' ,'Montes Valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino',1,0);

SELECT * FROM ESTUDIANTES;

--determinar cuantos estudiantes registrados
SELECT COUNT(*) FROM ESTUDIANTES AS E;

SELECT COUNT(E.id_est) 'Numero de Estudiantes' 
FROM ESTUDIANTES AS E;

SELECT MIN(E.edad)
FROM ESTUDIANTES AS E;

SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E
WHERE genero = 'femenino';




INSERT INTO ESTUDIANTES(nombres, apellidos, edad, fono, email, direccion, genero,id_esc,lic_conDucir) VALUES
	('Anna' ,'Gonzales Veliz', 20, 2832115, 'ana@gmail.com', 'Av. 6 de Agosto', 'femenino',2,1),
	('Pepe' ,'Gonzales Veliz', 20, 2832115, 'pepito@gmail.com', 'Av. 6 de Agosto', 'masculino',2,0);



SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E;

SELECT COUNT(E.lic_conucir)
FROM ESTUDIANTES AS E;


SELECT AVG(E.edad)
FROM ESTUDIANTES AS E;

--8
SELECT MAX(E.edad)
FROM ESTUDIANTES AS E
WHERE E.genero = 'femenino' OR E.genero = 'masculino';


--9
SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E
WHERE E.apellidos LIKE '%el%' AND E.genero = 'masculino';

--10
SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E
WHERE E.edad BETWEEN 21 AND 29
AND lic_conucir = 1;

CREATE TABLE ESCUELA
(
	id_esc INTEGER IDENTITY PRIMARY KEY NOT NULL,
	nom_esc VARCHAR(25) NOT NULL,
	direccion VARCHAR(25) NOT NULL,
	turno VARCHAR(25) NOT NULL,
);

INSERT INTO ESCUELA(nom_esc,direccion,turno) VALUES
	('JESUS DE NAZARET','VILLA ADELA','MAÑANA'),
	('DON BOSCO','VILLA ADELA','TARDE');

SELECT * FROM ESCUELA;
SELECT * FROM ESTUDIANTES;