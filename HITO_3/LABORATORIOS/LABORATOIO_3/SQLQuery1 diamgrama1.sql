USE Base_de_Datos;

CREATE TABLE nombres_dba_i
(
	cod_est varchar(100) primary key,
	nombre varchar(100),
);

INSERT INTO nombres_dba_i(nombre,cod_est)
	VALUES ('William','SIS125451'), 
	('Victor','SIS125452'),
	('Mijail','SIS125453'),
	('Karen','SIS125454'),
	('Bryan','SIS125455'),
	('Ariel','SIS125456');

CREATE TABLE nombres_dba_ii
(
	cod_est varchar(100) primary key,
	nombre varchar(100)
);

INSERT INTO nombres_dba_ii(nombre,cod_est)
	VALUES ('Victor','SIS125452'),
	('Ana','SIS187'),
	('Bryan','SIS125455'),
	('Samuel','SIS5161');

SELECT nii.nombre
FROM nombres_dba_i AS ni INNER JOIN nombres_dba_ii AS nii ON ni.cod_est = nii.cod_est;