USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_AdicionarCliente]    Script Date: 4/12/2022 15:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[PA_AdicionarCliente]

	@Id_Cliente VARCHAR(100),
	@ci INTEGER,
	@Nombre_Clientes VARCHAR(100),
	@Apellido_Clientes VARCHAR(100)

AS
BEGIN

	INSERT INTO Clientes(Id_Cliente,ci,Nombre_Clientes,Apellido_Clientes)
	VALUES (@Id_Cliente,@ci,@Nombre_Clientes,@Apellido_Clientes)

END