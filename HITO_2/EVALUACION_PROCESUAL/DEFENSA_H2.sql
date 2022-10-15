CREATE DATABASE Defensa_h2;

USE Defensa_h2;

CREATE TABLE celular
(
	codigo_de_barras varchar(100) PRIMARY KEY,
	modelo  varchar(100),
	marca  varchar(100),
	color  varchar(100)
);

INSERT INTO celular(codigo_de_barras,modelo,marca,color)
	VALUES('ABCK12','REDMI NOT 8','XIAOMI','NEGRO');

INSERT INTO celular(codigo_de_barras,modelo,marca,color)
	VALUES('A12KL','REDMI 8','XIAOMI','AZUL');

SELECT * 
FROM celular;



CREATE TABLE FACTURA
(
	num_fac VARCHAR (100) PRIMARY KEY NOT NULL,
	fecha DATE NOT NULL,
	descripcion VARCHAR (100)NOT NULL,
	costo INTEGER NOT NULL,
	nom_empre VARCHAR(100) NOT NULL

);

INSERT INTO FACTURA (num_fac, fecha,descripcion,costo,nom_empre)
	VALUES('4-569-8','12/06/2022','descripcion1',1500,'arcor');

INSERT INTO FACTURA (num_fac, fecha,descripcion,costo)
	VALUES('4-569-8','12/06/2022','descripcion1',1500,'arcor');

DROP TABLE FACTURA;

TRUNCATE TABLE FACTURA;

SELECT * 
FROM FACTURA;




CREATE TABLE appcelular
(
	id_app integer PRIMARY KEY NOT NULL,
	nom_app varchar (100) NOT NULL,
	año_publicacion integer NOT NULL,
	soporte varchar (100) NOT NULL
);


INSERT INTO appcelular(id_app, nom_app,año_publicacion,soporte)
	VALUES(123456,'SPOTIFY',2000,'ios-android');

INSERT INTO appcelular(id_app, nom_app,año_publicacion,soporte)
	VALUES(1278456,'WHATSAP',2012,'ios-android');

INSERT INTO appcelular(id_app, nom_app,año_publicacion,soporte)
	VALUES(1456,'GOOWI',2020,'ios');

INSERT INTO appcelular(id_app, nom_app,año_publicacion,soporte)
	VALUES(129856,'MIAVI',2021,'android');

/*INSERT INTO appcelular(id_app, nom_app,año_publicacion)
	VALUES(123756,'MIAVI',2021);*/


SELECT * 
FROM appcelular;





CREATE TABLE CLIENTE 
(
	CI INTEGER PRIMARY KEY NOT NULL,
	nombre VARCHAR (100) NOT NULL,
	apellido VARCHAR (100) NOT NULL,
	edad INTEGER NOT NULL,
	domicilio VARCHAR (100) NOT NULL
);

CREATE TABLE PEDIDO
(
	ID_PEDIDO INTEGER PRIMARY KEY NOT NULL,
	Fecha VARCHAR (100) NOT NULL,
	nom_pedido VARCHAR (100) NOT NULL,
	costo INTEGER NOT NULL
);


CREATE TABLE DET_PEDIDO 
(
	ID_DET INTEGER PRIMARY KEY NOT NULL,
	ci INTEGER NOT NULL,
	id_pedido INTEGER NOT NULL,

	FOREIGN KEY (ci) REFERENCES CLIENTE (CI),
	FOREIGN KEY (id_pedido) REFERENCES PEDIDO (ID_PEDIDO)
);

DROP TABLE CLIENTE;
DROP TABLE PEDIDO;
DROP TABLE DET_PEDIDO;

INSERT INTO CLIENTE(CI,nombre,apellido,edad,domicilio)
	VALUES (15646,'nombre1','apellido1',25,'dom1');
INSERT INTO CLIENTE(CI,nombre,apellido,edad,domicilio)
	VALUES (156406,'nombre2','apellido2',26,'dom2');


INSERT INTO PEDIDO(ID_PEDIDO, Fecha,nom_pedido,costo)
	VALUES (12345,'25/05/2001','pedido1',150);
INSERT INTO PEDIDO(ID_PEDIDO, Fecha,nom_pedido,costo)
	VALUES (12045,'29/05/2005','pedido2',250);


INSERT INTO DET_PEDIDO(ID_DET,ci,id_pedido)
	VALUES (456789,15646,12345);
INSERT INTO DET_PEDIDO(ID_DET,ci,id_pedido)
	VALUES (45617,156406,12045);

SELECT * FROM CLIENTE;
SELECT * FROM PEDIDO;
SELECT * FROM DET_PEDIDO;

INSERT INTO CLIENTE(CI,nombre,apellido,edad,domicilio)
	VALUES (16406,'nombre2','apellido2',16,'dom2');

SELECT nombre,apellido,edad
FROM CLIENTE
WHERE CLIENTE.edad>18;


