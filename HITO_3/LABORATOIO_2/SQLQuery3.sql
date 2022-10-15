USE Base_de_Datos;

CREATE TABLE Numeros_A
(
	Numeros integer primary key not null,
);

CREATE TABLE Numeros_B
(
	Numeros integer primary key not null,

);

INSERT INTO Numeros_A(Numeros) 
	VALUES(1);
INSERT INTO Numeros_A(Numeros) 
	VALUES(2);
INSERT INTO Numeros_A(Numeros) 
	VALUES(3);
INSERT INTO Numeros_A(Numeros) 
	VALUES(4);
INSERT INTO Numeros_A(Numeros) 
	VALUES(5);
INSERT INTO Numeros_A(Numeros) 
	VALUES(6);
INSERT INTO Numeros_A(Numeros) 
	VALUES(7);

INSERT INTO Numeros_B(Numeros) 
	VALUES(4);
INSERT INTO Numeros_B(Numeros) 
	VALUES(5);
INSERT INTO Numeros_B(Numeros) 
	VALUES(6);
INSERT INTO Numeros_B(Numeros) 
	VALUES(7);
INSERT INTO Numeros_B(Numeros) 
	VALUES(8);
INSERT INTO Numeros_B(Numeros) 
	VALUES(9);



SELECT NA.Numeros,NB.Numeros
FROM Numeros_A AS NA INNER JOIN Numeros_B AS NB ON	NA.Numeros = NB.Numeros
WHERE NA.Numeros > 5;

SELECT NA.Numeros,NB.Numeros
FROM Numeros_A AS NA INNER JOIN Numeros_B AS NB ON	NA.Numeros = NB.Numeros;

