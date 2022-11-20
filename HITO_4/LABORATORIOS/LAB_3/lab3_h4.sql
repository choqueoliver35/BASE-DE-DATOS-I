USE hito_4_funciones;


-- LABORATOIO 3
CREATE FUNCTION sumaV3 (@a INTEGER, @b INTEGER, @accion VARCHAR(50))
	RETURNS INTEGER AS
		BEGIN 
			DECLARE @c INTEGER;
			IF (@accion = 'sumar')
				BEGIN
					SELECT @c = @a + @b
				END

			IF (@accion = 'restar')
				BEGIN
					SELECT @c = @a - @b
				END

			IF (@accion = 'multiplicacion')
				BEGIN
					SELECT @c = @a * @b
				END
			
			IF (@accion = 'divicion')
				BEGIN
					SELECT @c = @a / @b
				END

			RETURN @c;
		END;

SELECT dbo.sumaV3(0,0,'multiplicacion') AS DBA_V3;



CREATE FUNCTION operacion (@a INTEGER, @b INTEGER, @accion VARCHAR(50))
	RETURNS INTEGER AS
		BEGIN 
			IF (@accion = 'sumar')
		
					RETURN @a + @b
	

			IF (@accion = 'restar')

					RETURN @a - @b


			IF (@accion = 'multiplicacion')

					RETURN @a * @b

			
			IF (@accion = 'divicion')
					RETURN @a / @b

			RETURN 1;
		END;

SELECT dbo.operacion(-10,5,'multiplicacion') AS DBA_V3;




--funciones de agregacion y funciones propias

SELECT * FROM ESCUELA;
SELECT * FROM ESTUDIANTES;


SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E
WHERE E.edad > 25;

--crear una funcion que me permita saber la cantidad de estudiantes mayores a cierta edad
--la funcion resive un solo parametro

CREATE FUNCTION det_edad(@edad INTEGER)
	RETURNS INTEGER AS
		BEGIN
			DECLARE @resp INTEGER = 0;

			SELECT @resp = COUNT(E.id_est)
			FROM ESTUDIANTES AS E
			WHERE E.edad > @edad;
			RETURN @resp;
		END;


SELECT dbo.det_edad(25) AS DET_EDAD; 


DROP FUNCTION det_edad_gen;





SELECT COUNT(E.id_est)
FROM ESTUDIANTES AS E
	INNER JOIN ESCUELA AS ES ON E.id_esc = ES.id_esc
WHERE E.edad > 20 AND 
	E.genero = 'femenino' AND 
	ES.nom_esc LIKE '%Andres Bello%';
			


CREATE FUNCTION det_edad_gen(@edad INTEGER, @sexo VARCHAR(20))
	RETURNS INTEGER AS
		BEGIN
			DECLARE @resp INTEGER = 0;

			
			SELECT @resp = COUNT(E.id_est)
			FROM ESTUDIANTES AS E
			INNER JOIN ESCUELA AS ES ON E.id_esc = ES.id_esc
			WHERE E.edad > @edad AND E.genero = @sexo AND ES.nom_esc LIKE '%Andres Bello%';
			RETURN @resp;
		END;


SELECT E.*
FROM ESTUDIANTES AS E
WHERE E.id_est = 7;

SELECT dbo.det_edad_gen(20,'femenino') AS DET_EDAD_ESC; 


CREATE FUNCTION max_id_est()
	RETURNS INTEGER AS
		BEGIN
			DECLARE @resp INTEGER = 0;

			
			SELECT @resp = MAX(E.id_est)
			FROM ESTUDIANTES AS E

			RETURN @resp;
		END;

SELECT E.*
FROM ESTUDIANTES AS E
WHERE E.id_est = dbo.max_id_est();