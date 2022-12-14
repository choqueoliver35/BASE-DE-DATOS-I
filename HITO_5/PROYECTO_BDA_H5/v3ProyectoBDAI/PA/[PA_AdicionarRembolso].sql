USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_AdicionarRembolso]    Script Date: 4/12/2022 15:55:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[PA_AdicionarRembolso]

	@Id_Rembolsos INTEGER,
	@Id_Cliente VARCHAR (100),
	@Id_Productos_Rembolsados VARCHAR(100),
	@Monto_Rembolsado VARCHAR (100),
	@Motivo Varchar (200)

AS
BEGIN

	INSERT INTO Rembolsos(Id_Rembolsos,Id_Cliente,Id_Productos_Rembolsados,Monto_Rembolsado,Motivo)
	VALUES (@Id_Rembolsos,@Id_Cliente,@Id_Productos_Rembolsados,@Monto_Rembolsado,@Motivo)

END