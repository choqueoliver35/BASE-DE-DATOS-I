USE Base_de_Datos;

CREATE TABLE NOTAS_P1
(
	Notas integer primary key not null,
);

CREATE TABLE NOTAS_P2
(
	Notas integer primary key not null,
);

CREATE TABLE NOTAS_P3
(
	Notas integer primary key not null,
);

INSERT INTO NOTAS_P1(Notas) 
	VALUES(40),(51),(30),(60),(75);

INSERT INTO NOTAS_P2(Notas) 
	VALUES(51),(60),(100);

INSERT INTO NOTAS_P3(Notas) 
	VALUES(20),(21),(23),(48),(51),(60);




SELECT N1.Notas,N2.Notas,N3.Notas
FROM NOTAS_P1 AS N1 
INNER JOIN NOTAS_P2 AS N2 ON	N1.Notas = N2.Notas
INNER JOIN NOTAS_P3 AS N3 ON	N1.Notas = N3.Notas;


SELECT N1.Notas,N2.Notas,N3.Notas
FROM NOTAS_P1 AS N1 
INNER JOIN NOTAS_P2 AS N2 ON	N1.Notas = N2.Notas
INNER JOIN NOTAS_P3 AS N3 ON	N1.Notas = N3.Notas
WHERE N1.Notas > 50 and N1.Notas < 100;

SELECT N1.Notas,N2.Notas,N3.Notas
FROM NOTAS_P1 AS N1 
INNER JOIN NOTAS_P2 AS N2 ON	N1.Notas = N2.Notas
INNER JOIN NOTAS_P3 AS N3 ON	N1.Notas = N3.Notas
WHERE N1.Notas BETWEEN 50 AND 100;


--SELECT NA.Numeros,NB.Numeros
--FROM Numeros_A AS NA INNER JOIN Numeros_B AS NB ON	NA.Numeros = NB.Numeros;