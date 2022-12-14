USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_ModificarRembolso]    Script Date: 4/12/2022 15:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[PA_ModificarRembolso]

	@Id_Rembolsos INTEGER,
	@Id_Cliente VARCHAR (100),
	@Id_Productos_Rembolsados VARCHAR(100),
	@Monto_Rembolsado VARCHAR (100),
	@Motivo Varchar (200)

AS
BEGIN

	UPDATE [dbo].[Rembolsos]
	SET	Id_Cliente = @Id_Cliente,
		Id_Productos_Rembolsados = @Id_Productos_Rembolsados,
		Monto_Rembolsado = @Monto_Rembolsado,
		Motivo = @Motivo
	WHERE Id_Rembolsos = @Id_Rembolsos

END