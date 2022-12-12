CREATE DATABASE DB_SistemaDeVentas;
USE DB_SistemaDeVentas;

ALTER FUNCTION CantidadProductos()
	RETURNS VARCHAR(100) AS
		BEGIN 
			DECLARE @Cantiad VARCHAR(100);
			SELECT @Cantiad = COUNT(P.Id_Producto)  
			FROM Producto AS P
			RETURN @Cantiad;
		END;


CREATE FUNCTION CantidadProductosInventario()

	RETURNS VARCHAR(100) AS
		BEGIN 
			DECLARE @Cantiad VARCHAR(100);
			
				SELECT @Cantiad = COUNT(CAST(CAST(Precio AS VARCHAR(4)) AS INTEGER)) 
				FROM Producto AS P

			RETURN @Cantiad;
		END;


SELECT dbo.CantidadProductosInventario() 'CANTIDAD DE PRODUCTOS EN EL INVENTARIO'	


			
CREATE FUNCTION CantidadClientes()

	RETURNS VARCHAR(100) AS
		BEGIN 
			DECLARE @Cantiad VARCHAR(100);
			
				SELECT @Cantiad = COUNT(C.Id_Cliente) 
				FROM Clientes AS C

			RETURN @Cantiad;
		END;

SELECT dbo.CantidadClientes() 'CANTIDAD DE CLIENTES'



CREATE FUNCTION CantidadVentas()

	RETURNS VARCHAR(100) AS
		BEGIN 
			DECLARE @Cantiad VARCHAR(100);
			
				SELECT @Cantiad = COUNT(V.Id_Cliente) 
				FROM Ventas AS V

			RETURN @Cantiad;
		END;

SELECT dbo.CantidadVentas() AS 'CANTIDAD DE VENTAS'

DROP TABLE Ventas;
DROP TABLE PersonalGerente;
DROP TABLE PersonalEmpleado;
DROP TABLE Inventario;
DROP TABLE Producto;
DROP TABLE Clientes;
DROP TABLE Rembolsos;
DROP TABLE LoginGerente;
DROP TABLE LoginEmpleado;


CREATE TABLE Clientes  
(
	Id_Cliente VARCHAR(100)  PRIMARY KEY,
	ci INTEGER,
	Nombre_Clientes VARCHAR(100),
	Apellido_Clientes VARCHAR(100)
);


CREATE TABLE Producto 
(
	Id_Producto VARCHAR(100)  PRIMARY KEY,
	Nombre VARCHAR(100),
	Precio VARCHAR(100),
	Marca VARCHAR(100),  
	Stock VARCHAR(100)
);



CREATE TABLE Inventario
(
	Id_Inventario VARCHAR(100)  PRIMARY KEY,
	Id_Productos VARCHAR(100),
	Productos VARCHAR(100),
	Marcas VARCHAR(100), 
);




CREATE TABLE Ventas
(
	Id_Ventas VARCHAR(100)  PRIMARY KEY,
	Id_Cliente VARCHAR(100),
	Id_Productos VARCHAR(100),
	Cuenta_a_Pagar VARCHAR(100),
	Cuenta_Pagada VARCHAR(100),
	Total_a_Pagar VARCHAR(100)
);


CREATE TABLE Rembolsos 
(
	Id_Rembolsos VARCHAR(100)  PRIMARY KEY,
	Id_Cliente VARCHAR (100),
	Id_Productos_Rembolsados VARCHAR(100),
	Monto_Rembolsado VARCHAR (100),
	Motivo VARCHAR (200),
	
	FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id_Cliente),
	FOREIGN KEY (Id_Productos_Rembolsados) REFERENCES Producto(Id_Producto)

);

-----------------------------------------------------------
-----------------------------------------------------------
CREATE TABLE PersonalGerente -- good
(
	Id_Gerente VARCHAR(100)  PRIMARY KEY,
	Nombre_Gerente VARCHAR(100),
	Apellido_Gerente VARCHAR(100),
	Sueldo_Gerente VARCHAR(100),
	Turno_Gerente VARCHAR(100),
);

CREATE TABLE PersonalEmpleado -- good
(
	Id_Empleado VARCHAR(100)  PRIMARY KEY,
	Nombre_Empleado VARCHAR(100),
	Apellido_Empleado VARCHAR(100),
	Sueldo_Empleado VARCHAR(100),
	Turno_Empleado VARCHAR(100)
);
-----------------------------------------------------------
-----------------------------------------------------------


SELECT  PG.*
FROM PersonalGerente AS PG
	INNER JOIN LoginGerente AS LG ON PG.Id_Gerente = LG.Id_Login_Gerente
WHERE LG.Contraseña LIKE '12%'


SELECT  PE.*
FROM PersonalEmpleado AS PE
	INNER JOIN LoginEmpleado AS LE ON PE.Id_Empleado = LE.id_Login_Empleado
WHERE LE.Contraseña LIKE '12%'


SELECT  V.*
FROM Ventas AS V
	INNER JOIN Clientes AS C ON V.Id_Cliente = C.Id_Cliente
WHERE CAST(V.Cuenta_a_Pagar AS INTEGER) < 5000


SELECT  V.*
FROM Ventas AS V
	INNER JOIN Clientes AS C ON V.Id_Cliente = C.Id_Cliente
WHERE CAST(V.Cuenta_Pagada AS INTEGER) > 1000






------------
-------------------------------------------
/*      TABLAS PARA EL ROLL GERENTE      */
-------------------------------------------

CREATE TABLE LoginGerente
(
	Id_Login_Gerente VARCHAR(100) PRIMARY KEY,
	Contraseña VARCHAR(100),
	Usuario VARCHAR(100),

	FOREIGN KEY (Id_Login_Gerente) REFERENCES PersonalGerente(Id_Gerente)
);


------------------------------------
/* TABLAS PARA EL ROLL  EMPLEADO   */
-----------------------------------------



CREATE TABLE LoginEmpleado
(
	id_Login_Empleado  VARCHAR(100)  PRIMARY KEY,
	Contraseña VARCHAR(100),
	Usuario VARCHAR(100),

	FOREIGN KEY (id_Login_Empleado) REFERENCES PersonalEmpleado(Id_Empleado)
);



/*

Estas tablas seran las mismas para empleado

TABLE Inventario
TABLE Clientes
TABLE Ventas

*/


SELECT * FROM [dbo].[Clientes]
SELECT * FROM [dbo].[Inventario]
SELECT * FROM [dbo].[LoginEmpleado]
SELECT * FROM [dbo].[LoginGerente]
SELECT * FROM [dbo].[PersonalEmpleado]
SELECT * FROM [dbo].[PersonalGerente]
SELECT * FROM [dbo].[Producto]
SELECT * FROM [dbo].[Rembolsos]
SELECT * FROM [dbo].[Ventas]


INSERT INTO [dbo].[Clientes]([Id_Cliente],[ci],[Nombre_Clientes],[Apellido_Clientes])
VALUES()

INSERT INTO [dbo].[Inventario]([Id_Inventario],[Id_Productos],[Productos],[Marcas])
VALUES()

INSERT INTO [dbo].[LoginEmpleado]([id_Login_Empleado],[Contraseña],[Usuario])
VALUES()

INSERT INTO [dbo].[LoginGerente]([Id_Login_Gerente],[Contraseña],[Usuario])
VALUES()

INSERT INTO [dbo].[PersonalEmpleado]([Id_Empleado],[Nombre_Empleado],[Apellido_Empleado],[Sueldo_Empleado],[Turno_Empleado])
VALUES()

INSERT INTO [dbo].[PersonalGerente]([Id_Gerente],[Nombre_Gerente],[Apellido_Gerente],[Sueldo_Gerente],[Turno_Gerente])
VALUES()

INSERT INTO [dbo].[Producto]([Id_Producto],[Nombre],[Precio],[Marca],[Stock])
VALUES()

INSERT INTO [dbo].[Rembolsos]([Id_Rembolsos],[Id_Productos_Rembolsados],[Monto_Rembolsado],[Motivo])
VALUES()

INSERT INTO [dbo].[Ventas]([Id_Ventas],[Id_Cliente],[Id_Productos],[Cuenta_a_Pagar],[Cuenta_Pagada],[Total_a_Pagar])
VALUES()

