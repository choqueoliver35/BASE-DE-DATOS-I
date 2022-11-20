USE hito_4_funciones;


-- LABORATORIO 2
SELECT pi() AS PI;

TRUNCATE TABLE ESCUELA;

INSERT INTO ESCUELA(nom_esc,direccion,turno)
	VALUES ('Amor de dios','El Alto','tarde'),
	('Andres Bello','La Paz','noche');

SELECT * FROM ESCUELA;
SELECT * FROM ESTUDIANTES;


--DETERMINAR CUANTOS EST TINEN LIC DE CONDUCIR
SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E
WHERE E.lic_conducir = 1;

SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E
WHERE E.edad < 20
AND E.lic_conducir = 0;


SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E
	INNER JOIN ESCUELA AS ES ON E.id_esc = ES.id_esc
WHERE ES.nom_esc = 'Amor de dios';


SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E
	INNER JOIN ESCUELA AS ES ON E.id_esc = ES.id_esc
WHERE ES.turno = 'mañana-tarde';

SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E
	INNER JOIN ESCUELA AS ES ON E.id_esc = ES.id_esc
WHERE E.edad > 25 AND ES.turno like '%tarde%';



CREATE FUNCTION retorna_nombre_materia ()
	RETURNS VARCHAR(50) AS
		BEGIN 
			RETURN 'BASE DE DATOS I'
		END;

SELECT dbo.retorna_nombre_materia() AS DBA;


CREATE FUNCTION retorna_nombre_materia_v2()
	RETURNS VARCHAR(50) AS
		BEGIN 
			DECLARE @nombre VARCHAR(25);
			SET @nombre = 'Base de Datos I';
			RETURN @nombre;
		END;

SELECT dbo.retorna_nombre_materia_v2() AS DBA_V2;

ALTER FUNCTION retorna_nombre_materia_v2()
	RETURNS VARCHAR(50) AS
		BEGIN 
			DECLARE @nombre VARCHAR(25);
			SET @nombre = 'Base de Datos II';
			RETURN @nombre;
		END;

CREATE FUNCTION retorna_nombre_materia_v3(@nombreMateria VARCHAR(50))
	RETURNS VARCHAR(50) AS
		BEGIN 
			DECLARE @nombre VARCHAR(25);
			SET @nombre = @nombreMateria;
			RETURN @nombre;
		END;

SELECT dbo.retorna_nombre_materia_v3('DBA I') AS DBA_V3;





CREATE FUNCTION suma()
	RETURNS INTEGER AS
		BEGIN 
			RETURN (5+5);
		END;

SELECT dbo.suma() AS DBA_V3;



CREATE FUNCTION suma2()
	RETURNS INTEGER AS
		BEGIN
			DECLARE @a INTEGER = 2;
			DECLARE @b INTEGER = 5;
			DECLARE @c INTEGER = 0;
			SET @c = @a + @b; 
			RETURN @c;
		END;

SELECT dbo.suma2() AS DBA_V3;

DROP FUNCTION sumaV1;

CREATE FUNCTION sumaV1 (@a INTEGER, @b INTEGER, @c INTEGER)
	RETURNS INTEGER AS
		BEGIN 
			DECLARE @resp INTEGER;
			SET @resp = @c + @a + @b; 
			RETURN @resp;
		END;

SELECT dbo.sumaV1(1,5,7) AS DBA_V3;





CREATE FUNCTION sumaV2 (@a INTEGER, @b INTEGER, @accion VARCHAR(50))
	RETURNS INTEGER AS
		BEGIN 
			DECLARE @c INTEGER;
			IF (@accion = 'sumar')   
				 SELECT @c = @a + @b  

			IF (@accion = 'restar')   
				 SELECT @c = @a - @b
			
			IF (@accion = 'multiplicacion')   
				 SELECT @c = @a * @b
			
			IF (@accion = 'divicion')   
				 SELECT @c = @a / @b  

			RETURN @c;
		END;

SELECT dbo.sumaV2(1,1,'sumar') AS DBA_V3;
