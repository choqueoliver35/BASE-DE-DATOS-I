CREATE DATABASE defensa_hito4;
USE defensa_hito4;


CREATE TABLE CAMPEONATO
(
	id_campeonato VARCHAR(12) PRIMARY KEY NOT NULL,
	nombre_campeonato VARCHAR (30) NOT NULL,
	sede VARCHAR (20) NOT NULL
);

INSERT INTO CAMPEONATO (id_campeonato,nombre_campeonato,sede)
	VALUES('camp-111','Campeonato Unifranz','El Alto'),
		  ('camp-222','Campeonato Unifranz','Cochabamba');



CREATE TABLE EQUIPO
(
	id_equipo VARCHAR(12) PRIMARY KEY NOT NULL,
	nombre_equipo VARCHAR (30) NOT NULL,
	categoria VARCHAR (8) NOT NULL,
	id_campeonato VARCHAR(12) NOT NULL,

	FOREIGN KEY (id_campeonato) REFERENCES CAMPEONATO (id_campeonato)
);

INSERT INTO EQUIPO (id_equipo,nombre_equipo,categoria,id_campeonato)
	VALUES('equ-111','Google','VARONES','camp-111'),
		  ('equ-222','404 Not Found','VARONES','camp-111'),
		  ('equ-333','girls unifranz','MUJERES','camp-111');



CREATE TABLE JUGADOR
(
	id_jugador VARCHAR(12) PRIMARY KEY NOT NULL,
	nombres VARCHAR (30) NOT NULL,
	apellidos VARCHAR (50) NOT NULL,
	ci VARCHAR (15) NOT NULL,
	edad INTEGER NOT NULL,
	id_equipo VARCHAR(12) NOT NULL,

	FOREIGN KEY (id_equipo) REFERENCES EQUIPO (id_equipo)
);

INSERT INTO JUGADOR (id_jugador,nombres,apellidos,ci,edad,id_equipo)
	VALUES('jug-111','Carlos','Villa','8997811LP',19,'equ-222'),
		  ('jug-222','Pedro','Salas','8997822LP',20,'equ-222'),
		  ('jug-333','Saul','Araj','8997833LP',21,'equ-222'),
		  ('jug-444','Sandra','Solis','8997844LP',20,'equ-333'),
		  ('jug-555','Ana','Mica','8997855LP',23,'equ-333');



SELECT * FROM CAMPEONATO;
SELECT * FROM EQUIPO;
SELECT * FROM JUGADOR;


--MOSTRAR TODOS LOS JUGADORES DEL GENERO FEMENINO QUE JUEGAN EN EL CAMPEONADO UNIFRANZ QUE SEAN DE LA SEDE EL ALTO
--JUGADOR(NOMBRE, APELLIDO)
--CAMPEONADO(NOMBRE,SEDE)
--EQUIPO(CATEGORIA)
SELECT J.nombres, J.apellidos, C.nombre_campeonato, C.sede, E.categoria
FROM CAMPEONATO AS C 
INNER JOIN EQUIPO AS E ON C.id_campeonato = E.id_campeonato
INNER JOIN JUGADOR AS J ON E.id_equipo = J.id_equipo
WHERE E.categoria = 'MUJERES' AND C.sede = 'El Alto' AND  C.nombre_campeonato = 'Campeonato Unifranz'


--DEETERMINAR CUANTOS JUGADORES EN EL EQUIPO GOOGLE

SELECT COUNT(J.id_jugador)
FROM JUGADOR AS J INNER JOIN EQUIPO AS E ON J.id_equipo = E.id_equipo
WHERE E.categoria = 'VARONES' AND E.nombre_equipo = 'Google' AND J.apellidos LIKE 'M%'


CREATE FUNCTION type_client(@credit_number INTEGER)
	RETURNS VARCHAR(100) AS
		BEGIN 
			DECLARE @c VARCHAR(100);
			IF (@credit_number > 50000)
				BEGIN
					SELECT @c ='PLATINIUM'
				END

			IF (@credit_number >= 10000 AND @credit_number <= 50000)
				BEGIN
					SELECT @c ='GOLD'
				END

			IF (@credit_number < 10000)
				BEGIN
					SELECT @c ='SILVER'
				END
		
			RETURN @c;
		END;


SELECT dbo.type_client(70000) AS 'TIPO DE CLIENTE';
SELECT dbo.type_client(10000) AS 'TIPO DE CLIENTE';
SELECT dbo.type_client(10) AS 'TIPO DE CLIENTE';




SELECT COUNT(J.id_jugador)
FROM CAMPEONATO AS C 
	INNER JOIN EQUIPO AS E ON C.id_campeonato = E.id_campeonato
	INNER JOIN JUGADOR AS J ON E.id_equipo = J.id_equipo
WHERE J.apellidos LIKE '%S' AND J.nombres LIKE 'M%' AND C.sede = 'El Alto'

CREATE FUNCTION my_funcction(@sede VARCHAR(100))
	RETURNS VARCHAR(100) AS
		BEGIN 
			DECLARE @c VARCHAR(100);
			
			SELECT @c = COUNT(J.id_jugador)
			FROM CAMPEONATO AS C 
			INNER JOIN EQUIPO AS E ON C.id_campeonato = E.id_campeonato
			INNER JOIN JUGADOR AS J ON E.id_equipo = J.id_equipo
			WHERE J.apellidos LIKE '%S' AND J.nombres LIKE 'M%' AND C.sede = @sede
		
			RETURN @c;
		END;


SELECT dbo.my_funcction('El Alto') AS 'PARTE 1'




SELECT COUNT(J.id_jugador)
FROM CAMPEONATO AS C 
	INNER JOIN EQUIPO AS E ON C.id_campeonato = E.id_campeonato
	INNER JOIN JUGADOR AS J ON E.id_equipo = J.id_equipo
WHERE E.categoria = 'MUJERES' AND E.nombre_equipo = 'Google'

CREATE FUNCTION my_funcction2(@EQUIPO VARCHAR(100), @CATEGORIA VARCHAR(100))
	RETURNS VARCHAR(100) AS
		BEGIN 
			DECLARE @c VARCHAR(100);
			
			SELECT @c = COUNT(J.id_jugador)
			FROM CAMPEONATO AS C 
			INNER JOIN EQUIPO AS E ON C.id_campeonato = E.id_campeonato
			INNER JOIN JUGADOR AS J ON E.id_equipo = J.id_equipo
			WHERE E.categoria = @CATEGORIA AND E.nombre_equipo = @EQUIPO
		
			RETURN @c;
		END;



SELECT dbo.my_funcction2('VARONES','Google') AS 'PARTE 2'
SELECT dbo.my_funcction2('MUJERES','Google') AS 'PARTE 2'
